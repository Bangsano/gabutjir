/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

LOCK TABLES `nests` WRITE;
/*!40000 ALTER TABLE `nests` DISABLE KEYS */;
REPLACE INTO `nests` (`id`, `uuid`, `author`, `name`, `description`, `created_at`, `updated_at`) VALUES (5,'6b9ab860-30d5-46d9-87ec-de83e614bbf4','bangsano135@gmail.com','BOT ANJIR','Auto-Create by Sano Official yang paling ganteng','2020-01-01 00:00:00','2020-01-01 00:00:00');
/*!40000 ALTER TABLE `nests` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

LOCK TABLES `eggs` WRITE;
/*!40000 ALTER TABLE `eggs` DISABLE KEYS */;
REPLACE INTO `eggs` (`id`, `uuid`, `nest_id`, `author`, `name`, `description`, `features`, `docker_images`, `file_denylist`, `update_url`, `config_files`, `config_startup`, `config_logs`, `config_stop`, `config_from`, `startup`, `script_container`, `copy_script_from`, `script_entry`, `script_is_privileged`, `script_install`, `created_at`, `updated_at`, `force_outgoing_ip`) VALUES (15,'0d7c0c33-620b-4723-bcaf-b2a7c49a337f',5,'bangsano135@gmail.com','NodeJS','Jangan Lupa Support Terus Sano Official Ya😊',NULL,'{\"Node.js V20\":\"ghcr.io\\/parkervcp\\/yolks:nodejs_20\",\"Node.js V24\":\"ghcr.io\\/parkervcp\\/yolks:nodejs_24\",\"Node.js V23\":\"ghcr.io\\/parkervcp\\/yolks:nodejs_23\",\"Node.js V22\":\"ghcr.io\\/parkervcp\\/yolks:nodejs_22\",\"Node.js V21\":\"ghcr.io\\/parkervcp\\/yolks:nodejs_21\",\"Node.js V19\":\"ghcr.io\\/parkervcp\\/yolks:nodejs_19\",\"Node.js V18\":\"ghcr.io\\/parkervcp\\/yolks:nodejs_18\",\"Node.js V17\":\"ghcr.io\\/parkervcp\\/yolks:nodejs_17\",\"Node.js V16\":\"ghcr.io\\/parkervcp\\/yolks:nodejs_16\",\"Node.js V15\":\"ghcr.io\\/parkervcp\\/yolks:nodejs_15\",\"Node.js V14\":\"ghcr.io\\/parkervcp\\/yolks:nodejs_14\",\"Node.js V13\":\"ghcr.io\\/parkervcp\\/yolks:nodejs_13\",\"Node.js V12\":\"ghcr.io\\/parkervcp\\/yolks:nodejs_12\",\"Node.js V11\":\"ghcr.io\\/parkervcp\\/yolks:nodejs_11\",\"Node.js V10\":\"ghcr.io\\/parkervcp\\/yolks:nodejs_10\",\"Node.js V9\":\"ghcr.io\\/parkervcp\\/yolks:nodejs_9\",\"Node.js V8\":\"ghcr.io\\/parkervcp\\/yolks:nodejs_8\",\"Node.js V7\":\"ghcr.io\\/parkervcp\\/yolks:nodejs_7\",\"Node.js V6\":\"ghcr.io\\/parkervcp\\/yolks:nodejs_6\",\"Node.js V5\":\"ghcr.io\\/parkervcp\\/yolks:nodejs_5\",\"Node.js V4\":\"ghcr.io\\/parkervcp\\/yolks:nodejs_4\",\"Node.js V3\":\"ghcr.io\\/parkervcp\\/yolks:nodejs_3\",\"Node.js V2\":\"ghcr.io\\/parkervcp\\/yolks:nodejs_2\",\"Node.js V1\":\"ghcr.io\\/parkervcp\\/yolks:nodejs_1\"}','[]',NULL,'{}','{\r\n    \"done\": \"running\"\r\n}','{}','^^C',NULL,'if [[ -d .git ]] && [[ {{AUTO_UPDATE}} == \"1\" ]]; then git pull; fi; if [[ ! -z ${NODE_PACKAGES} ]]; then /usr/local/bin/npm install ${NODE_PACKAGES}; fi; if [[ ! -z ${UNNODE_PACKAGES} ]]; then /usr/local/bin/npm uninstall ${UNNODE_PACKAGES}; fi; if [ -f /home/container/package.json ]; then /usr/local/bin/npm install; fi; if [[ ! -z ${CUSTOM_ENVIRONMENT_VARIABLES} ]]; then vars=$(echo ${CUSTOM_ENVIRONMENT_VARIABLES} | tr \";\" \"\\n\"); for line in $vars; do export $line; done fi; /usr/local/bin/${CMD_RUN};','node:14-buster-slim',NULL,'bash',1,'#!/bin/bash\n# NodeJS App Installation Script\n#\n# Server Files: /mnt/server\napt update\napt install -y git curl jq file unzip make gcc g++ python python-dev libtool\n\nmkdir -p /mnt/server\ncd /mnt/server\n\nif [ \"${USER_UPLOAD}\" == \"true\" ] || [ \"${USER_UPLOAD}\" == \"1\" ]; then\n    echo -e \"assuming user knows what they are doing have a good day.\"\n    exit 0\nfi\n\nif [[ ${GIT_ADDRESS} != *.git ]]; then\n    GIT_ADDRESS=${GIT_ADDRESS}.git\nfi\n\nif [ -z \"${USERNAME}\" ] && [ -z \"${ACCESS_TOKEN}\" ]; then\n    echo -e \"using anon api call\"\nelse\n    GIT_ADDRESS=\"https://${USERNAME}:${ACCESS_TOKEN}@$(echo -e ${GIT_ADDRESS} | cut -d/ -f3-)\"\nfi\n\nif [ \"$(ls -A /mnt/server)\" ]; then\n    echo -e \"/mnt/server directory is not empty.\"\n    if [ -d .git ]; then\n        echo -e \".git directory exists\"\n        if [ -f .git/config ]; then\n            echo -e \"loading info from git config\"\n            ORIGIN=$(git config --get remote.origin.url)\n        else\n            echo -e \"files found with no git config\"\n            echo -e \"closing out without touching things to not break anything\"\n            exit 10\n        fi\n    fi\n\n    if [ \"${ORIGIN}\" == \"${GIT_ADDRESS}\" ]; then\n        echo \"pulling latest from github\"\n        git pull\n    fi\nelse\n    echo -e \"/mnt/server is empty.\\ncloning files into repo\"\n    if [ -z ${BRANCH} ]; then\n        echo -e \"cloning default branch\"\n        git clone ${GIT_ADDRESS} .\n    else\n        echo -e \"cloning ${BRANCH}\'\"\n        git clone --single-branch --branch ${BRANCH} ${GIT_ADDRESS} .\n    fi\nfi\n\necho \"Installing nodejs packages\"\nif [[ ! -z ${NODE_PACKAGES} ]]; then\n    /usr/local/bin/npm install ${NODE_PACKAGES}\nfi\n\nif [ -f /mnt/server/package.json ]; then\n    /usr/local/bin/npm install --production\nfi\n\necho -e \"install complete\"\nexit 0','2020-01-01 00:00:00','2020-01-01 00:00:00',0);
REPLACE INTO `eggs` (`id`, `uuid`, `nest_id`, `author`, `name`, `description`, `features`, `docker_images`, `file_denylist`, `update_url`, `config_files`, `config_startup`, `config_logs`, `config_stop`, `config_from`, `startup`, `script_container`, `copy_script_from`, `script_entry`, `script_is_privileged`, `script_install`, `created_at`, `updated_at`, `force_outgoing_ip`) VALUES (16,'3a0efd64-c825-4757-b3fd-0e0a8d30967f',5,'bangsano135@gmail.com','Python','Jangan Lupa Support Terus Sano Official Ya😊',NULL,'{\"python_3.12\":\"ghcr.io\\/silly-development\\/yolks:python_3.12\",\"python_3.11\":\"ghcr.io\\/silly-development\\/yolks:python_3.11\",\"python_3.10\":\"ghcr.io\\/silly-development\\/yolks:python_3.10\",\"python_3.9\":\"ghcr.io\\/silly-development\\/yolks:python_3.9\",\"python_3.8\":\"ghcr.io\\/silly-development\\/yolks:python_3.8\",\"python_3.7\":\"ghcr.io\\/silly-development\\/yolks:python_3.7\",\"python_2.7\":\"ghcr.io\\/silly-development\\/yolks:python_2.7\"}','[]',NULL,'{}','{\r\n    \"done\": [\r\n        \":/home/container$\",\r\n        \"STARTUP /home/container\"\r\n    ]\r\n}','{}','^^C',NULL,'if [[ -d .git ]] && [[ {{AUTO_UPDATE}} == \"1\" ]]; then git pull; fi; if [[ ! -z {{PY_PACKAGES}} ]]; then pip install -U --prefix .local {{PY_PACKAGES}}; fi; if [[ -f /home/container/${REQUIREMENTS_FILE} ]]; then pip install -U --prefix .local -r ${REQUIREMENTS_FILE}; fi; /usr/local/bin/python /home/container/{{PY_FILE}}','python:3.8-slim',NULL,'bash',1,'#!/bin/bash\r\n# Python App Installation Script\r\n#\r\n# Server Files: /mnt/server\r\napt update\r\napt install -y git curl jq file unzip make gcc g++ python python-dev libtool\r\n\r\nmkdir -p /mnt/server\r\ncd /mnt/server\r\n\r\nif [ \"${USER_UPLOAD}\" == \"true\" ] || [ \"${USER_UPLOAD}\" == \"1\" ]; then\r\n    echo -e \"assuming user knows what they are doing have a good day.\"\r\n    exit 0\r\nfi\r\n\r\n## add git ending if it\'s not on the address\r\nif [[ ${GIT_ADDRESS} != *.git ]]; then\r\n    GIT_ADDRESS=${GIT_ADDRESS}.git\r\nfi\r\n\r\nif [ -z \"${USERNAME}\" ] && [ -z \"${ACCESS_TOKEN}\" ]; then\r\n    echo -e \"using anon api call\"\r\nelse\r\n    GIT_ADDRESS=\"https://${USERNAME}:${ACCESS_TOKEN}@$(echo -e ${GIT_ADDRESS} | cut -d/ -f3-)\"\r\nfi\r\n\r\n## pull git python repo\r\nif [ \"$(ls -A /mnt/server)\" ]; then\r\n    echo -e \"/mnt/server directory is not empty.\"\r\n    if [ -d .git ]; then\r\n        echo -e \".git directory exists\"\r\n        if [ -f .git/config ]; then\r\n            echo -e \"loading info from git config\"\r\n            ORIGIN=$(git config --get remote.origin.url)\r\n        else\r\n            echo -e \"files found with no git config\"\r\n            echo -e \"closing out without touching things to not break anything\"\r\n            exit 10\r\n        fi\r\n    fi\r\n\r\n    if [ \"${ORIGIN}\" == \"${GIT_ADDRESS}\" ]; then\r\n        echo \"pulling latest from github\"\r\n        git pull\r\n    fi\r\nelse\r\n    echo -e \"/mnt/server is empty.\\ncloning files into repo\"\r\n    if [ -z ${BRANCH} ]; then\r\n        echo -e \"cloning default branch\"\r\n        git clone ${GIT_ADDRESS} .\r\n    else\r\n        echo -e \"cloning ${BRANCH}\'\"\r\n        git clone --single-branch --branch ${BRANCH} ${GIT_ADDRESS} .\r\n    fi\r\n\r\nfi\r\n\r\nexport HOME=/mnt/server\r\n\r\necho \"Installing python requirements into folder\"\r\nif [[ ! -z ${PY_PACKAGES} ]]; then\r\n    pip install -U --prefix .local ${PY_PACKAGES}\r\nfi\r\n\r\nif [ -f /mnt/server/requirements.txt ]; then\r\n    pip install -U --prefix .local -r ${REQUIREMENTS_FILE}\r\nfi\r\n\r\necho -e \"install complete\"\r\nexit 0','2020-01-01 00:00:00','2020-01-01 00:00:00',0);
/*!40000 ALTER TABLE `eggs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

LOCK TABLES `egg_variables` WRITE;
/*!40000 ALTER TABLE `egg_variables` DISABLE KEYS */;
REPLACE INTO `egg_variables` (`id`, `egg_id`, `name`, `description`, `env_variable`, `default_value`, `user_viewable`, `user_editable`, `rules`, `created_at`, `updated_at`) VALUES (71,15,'Git Repo Address','GitHub Repo to clone\n\nI.E. https://github.com/user_name/repo_name','GIT_ADDRESS','',1,1,'nullable|string','2020-01-01 00:00:00','2020-01-01 00:00:00');
REPLACE INTO `egg_variables` (`id`, `egg_id`, `name`, `description`, `env_variable`, `default_value`, `user_viewable`, `user_editable`, `rules`, `created_at`, `updated_at`) VALUES (72,15,'Install Branch','The branch to install.','BRANCH','',1,1,'nullable|string','2020-01-01 00:00:00','2020-01-01 00:00:00');
REPLACE INTO `egg_variables` (`id`, `egg_id`, `name`, `description`, `env_variable`, `default_value`, `user_viewable`, `user_editable`, `rules`, `created_at`, `updated_at`) VALUES (73,15,'Git Username','Username to auth with git.','USERNAME','',1,1,'nullable|string','2020-01-01 00:00:00','2020-01-01 00:00:00');
REPLACE INTO `egg_variables` (`id`, `egg_id`, `name`, `description`, `env_variable`, `default_value`, `user_viewable`, `user_editable`, `rules`, `created_at`, `updated_at`) VALUES (74,15,'Git Access Token','Password to use with git.\n\nIt\'s best practice to use a Personal Access Token.\nhttps://github.com/settings/tokens\nhttps://gitlab.com/-/profile/personal_access_tokens','ACCESS_TOKEN','',1,1,'nullable|string','2020-01-01 00:00:00','2020-01-01 00:00:00');
REPLACE INTO `egg_variables` (`id`, `egg_id`, `name`, `description`, `env_variable`, `default_value`, `user_viewable`, `user_editable`, `rules`, `created_at`, `updated_at`) VALUES (75,15,'Command Run','Command Start Bot','CMD_RUN','npm start',1,1,'required|string','2020-01-01 00:00:00','2020-01-01 00:00:00');
REPLACE INTO `egg_variables` (`id`, `egg_id`, `name`, `description`, `env_variable`, `default_value`, `user_viewable`, `user_editable`, `rules`, `created_at`, `updated_at`) VALUES (76,16,'Git Repo Address','Git repo to clone\r\n\r\nI.E. https://github.com/parkervcp/repo_name','GIT_ADDRESS','',1,1,'nullable|string','2020-01-01 00:00:00','2020-01-01 00:00:00');
REPLACE INTO `egg_variables` (`id`, `egg_id`, `name`, `description`, `env_variable`, `default_value`, `user_viewable`, `user_editable`, `rules`, `created_at`, `updated_at`) VALUES (77,16,'Git Branch','What branch to pull from github.\r\n\r\nDefault is blank to pull the repo default branch','BRANCH','',1,1,'nullable|string','2020-01-01 00:00:00','2020-01-01 00:00:00');
REPLACE INTO `egg_variables` (`id`, `egg_id`, `name`, `description`, `env_variable`, `default_value`, `user_viewable`, `user_editable`, `rules`, `created_at`, `updated_at`) VALUES (78,16,'User Uploaded Files','Skip all the install stuff if you are letting a user upload files.\r\n\r\n0 = false (default)\r\n1 = true','USER_UPLOAD','0',1,1,'required|boolean','2020-01-01 00:00:00','2020-01-01 00:00:00');
REPLACE INTO `egg_variables` (`id`, `egg_id`, `name`, `description`, `env_variable`, `default_value`, `user_viewable`, `user_editable`, `rules`, `created_at`, `updated_at`) VALUES (79,16,'Auto Update','Pull the latest files on startup when using a GitHub repo.','AUTO_UPDATE','0',1,1,'required|boolean','2020-01-01 00:00:00','2020-01-01 00:00:00');
REPLACE INTO `egg_variables` (`id`, `egg_id`, `name`, `description`, `env_variable`, `default_value`, `user_viewable`, `user_editable`, `rules`, `created_at`, `updated_at`) VALUES (80,16,'App py file','The file that starts the App.','PY_FILE','main.py',1,1,'required|string','2020-01-01 00:00:00','2020-01-01 00:00:00');
REPLACE INTO `egg_variables` (`id`, `egg_id`, `name`, `description`, `env_variable`, `default_value`, `user_viewable`, `user_editable`, `rules`, `created_at`, `updated_at`) VALUES (81,16,'Additional Python packages','Install additional python packages.\r\n\r\nUse spaces to separate','PY_PACKAGES','',1,1,'nullable|string','2020-01-01 00:00:00','2020-01-01 00:00:00');
REPLACE INTO `egg_variables` (`id`, `egg_id`, `name`, `description`, `env_variable`, `default_value`, `user_viewable`, `user_editable`, `rules`, `created_at`, `updated_at`) VALUES (82,16,'Git Username','Username to auth with git.','USERNAME','',1,1,'nullable|string','2020-01-01 00:00:00','2020-01-01 00:00:00');
REPLACE INTO `egg_variables` (`id`, `egg_id`, `name`, `description`, `env_variable`, `default_value`, `user_viewable`, `user_editable`, `rules`, `created_at`, `updated_at`) VALUES (83,16,'Git Access Token','Password to use with git.\r\n\r\nIt\'s best practice to use a Personal Access Token.\r\nhttps://github.com/settings/tokens\r\nhttps://gitlab.com/-/profile/personal_access_tokens','ACCESS_TOKEN','',1,1,'nullable|string','2020-01-01 00:00:00','2020-01-01 00:00:00');
REPLACE INTO `egg_variables` (`id`, `egg_id`, `name`, `description`, `env_variable`, `default_value`, `user_viewable`, `user_editable`, `rules`, `created_at`, `updated_at`) VALUES (84,16,'Requirements file','if there are other requirements files to choose from.','REQUIREMENTS_FILE','requirements.txt',1,1,'required|string','2020-01-01 00:00:00','2020-01-01 00:00:00');
/*!40000 ALTER TABLE `egg_variables` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
