# Saltstack-all
使用Saltstack写的状态文件，前提是主master安装了salt-master，备安装了salt-minion，通过salt-key -ya name/ip 接受了，并且salt name/ip test.ping通后，使用命令salt name/ip state.sls modules.database..mysql.install saltenv=prod 执行(示例)记忆力不行，怕忘记
