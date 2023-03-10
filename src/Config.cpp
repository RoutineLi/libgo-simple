/*************************************************************************
	> File Name: config.cpp
	> Author: lpj
	> Mail: lipeijie@vrvmail.com.cn
	> Created Time: 2022年10月26日 星期三 17时06分43秒
 ************************************************************************/
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <utility>
#include <list>

#include "Config.h"
#include "Util.h"

namespace Routn
{
	ConfigVarBase::ptr Config::LookupBase(const std::string &name)
	{
		RWMutexType::ReadLock lock(GetMutex());
		auto it = GetDatas().find(name);
		return it == GetDatas().end() ? nullptr : it->second;
	}

	//key:"A.B", val:100
	//A:
	//	B:10

	static void ListAllMember(const std::string &prefix, const YAML::Node &node,
							  std::list<std::pair<std::string, const YAML::Node>> &output)
	{
		if (prefix.find_first_not_of("abcdefghikjlmnopqrstuvwxyz._012345678") != std::string::npos)
		{
			ROUTN_LOG_ERROR(g_logger) << "Config invalid name: " << prefix << ": " << node;
			return;
		}
		output.push_back({prefix, node});
		if (node.IsMap())
		{
			for (auto it = node.begin(); it != node.end(); ++it)
			{
				ListAllMember(prefix.empty() ? it->first.Scalar() : (prefix + "." + it->first.Scalar()), it->second, output);
			}
		}
	}


	void Config::LoadFromYaml(const YAML::Node &root)
	{
		std::list<std::pair<std::string, const YAML::Node>> all_nodes;
		ListAllMember("", root, all_nodes);

		for (auto &i : all_nodes)
		{
			std::string key = i.first;
			if (key.empty())
			{
				continue;
			}
			std::transform(key.begin(), key.end(), key.begin(), ::tolower);
			ConfigVarBase::ptr var = LookupBase(key);
			if (var)
			{
				if (i.second.IsScalar())
				{
					var->fromString(i.second.Scalar());
				}
				else
				{
					std::stringstream ss;
					ss << i.second;
					var->fromString(ss.str());
				}

				//std::cout << "---" << i.second.Scalar() << "---var---\n";
			}
		}
	}



};
