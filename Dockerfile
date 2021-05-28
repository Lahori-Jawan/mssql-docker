FROM mcr.microsoft.com/mssql/server:2017-latest-ubuntu
# mcr.microsoft.com/mssql/server:2017-latest-ubuntu

ENV SA_PASSWORD @Password1
ENV ACCEPT_EULA Y
ENV MSSQL_PID Enterprise

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY . /usr/src/app

# Grant permissions for the init-db script to be executable
RUN chmod +x /usr/src/app/init-db.sh

EXPOSE 1433

# Note: comment bellow line out to prevent init-db script from running
CMD /bin/bash ./entrypoint.sh
