Development:

Install postgres on mac:
brew install postgres
initdb /usr/local/var/postgres
/usr/local/Cellar/postgresql/9.5.2/bin/createuser -s postgres
launchctl load /usr/local/Cellar/postgresql/9.5.2/homebrew.mxcl.postgresql.plist


Production deployment:
docker-compose up
