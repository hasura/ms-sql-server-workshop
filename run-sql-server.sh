#! /bin/bash
docker run -d \
    -e "SA_PASSWORD=SQ1p4ssword" -e "ACCEPT_EULA=Y" \
    -p 1433:1433 \
    mcr.microsoft.com/mssql/server:2019-latest
