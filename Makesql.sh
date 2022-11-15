#!/usr/bin/env sh

cd .. # Since using make
result=${PWD##*/}


docker run \
-e 'ACCEPT_EULA=Y' \
-e 'SA_PASSWORD=SQLPASSWORD1!' \
-e 'MSSQL_PID=Express' \
--net debate-net \
--name $result \
-d mcr.microsoft.com/mssql/server:2022-latest \
-p 1433:1433 \
