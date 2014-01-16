# lamp stack and vagrant replacement based on docker.

## Requirements
1. Install Docker.
2. Install run sudo apt-get install sshpass mysql-client

# Howto
Look at the docker_go.sh and change some ports
just run the docker_go.sh, on the first time it takes a few minutes.

the htdocs directory is mounted to /var/www, so you can start changing the content.

# Notes
if you need to change some configurations, make sure that you drop the docker image (look at the docker_go.sh) first and rebuild the container.

# MySql
The content of the MySql server is stored in the shared/mysql_databases directory.
This folder is mounted from the host, so you can drop the docker image without losing your databases.

# xdebug
Soon :)

# Why i think this is this smarter than Vagrant + Virtualbox + Chef / Puppet
It's blanzing fast.
It performs very well, you can run a lot containers without any problems.
It saves space.
Docker is more like a api, you can do a lot of cool stuff :)

# Why i think this isn't smarter than Vagrant + Virtualbox + Chef / Puppet
Its a bit more complex
Sometimes you get in trouble with software that dont run out of the box in docker
There isnt something like provisioning at the moment, but keep in mind you could use Chef & Puppet in Docker, too.