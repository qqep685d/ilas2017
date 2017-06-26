[Usage of Dockerfile]

1) Rename Dockerfile

Dockerfile.bioinfomatics_apps
 |
 v
Dockerfile

2) Move to directory where Dockerfile is placed
mv /path_to_dockerfile_directory/

3) Build Docker container
docker build -t [container name] .

