cd ..
docker pull mcr.microsoft.com/powershell:nanoserver-1909
echo TeamCity/buildAgent > context/.dockerignore
echo TeamCity/temp >> context/.dockerignore
docker build -f "generated/windows/Server/nanoserver/1909/Dockerfile" -t teamcity-server:local-nanoserver-1909 "context"
