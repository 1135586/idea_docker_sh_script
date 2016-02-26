mkdir docker-dir
cd docker-dir
echo 'place this war' > README
touch Dockerfile
echo 'FROM tomcat' >> Dockerfile
echo 'ADD xxx.war /usr/local/tomcat/webapps/' >> Dockerfile
cd ../
mkdir docker-settings
cd docker-settings
touch container_settings.json
echo '{' >> container_settings.json
echo '  "_comment": "FOR DETAILED FORMAT LOOK AT https://docs.docker.com/reference/api/docker_remote_api_v1.16/#create-a-container",' >> container_settings.json
echo '  "AttachStdin": true,' >> container_settings.json
echo '  "OpenStdin": true,' >> container_settings.json
echo '  "HostConfig": {' >> container_settings.json
echo '    "PortBindings":{ "8080/tcp": [{ "HostIp": "0.0.0.0", "HostPort": "18080" }] }' >> container_settings.json
echo '  }' >> container_settings.json
echo '}' >> container_settings.json
