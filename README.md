<<<<<<< HEAD
# ![FIN/TECH Logo](https://avatars3.githubusercontent.com/u/15434228?v=3&s=40 "FIN/TECH Logo") Utilities

Collection of useful scripts to share with the world!

## Ubuntu
### [Docker Cleanup Script](ubuntu/docker-cleanup)

Bash script that will purge any `exited` instances and any `dangling` images.

**Installation**
Copy the script to `/usr/local/bin` and make sure it's executable.
```
sudo cp ubuntu/docker-cleanup /usr/local/bin/
sudo chmod 755 /usr/local/bin/docker-cleanup
```

**Execution**
Delete all exited containers and dangling images
```
docker-cleanup
```
Lists which containers and images it will purge
```
docker-cleanup --dry-run
```
=======
# ![FIN/TECH Logo](https://avatars3.githubusercontent.com/u/15434228?v=3&s=40 "FIN/TECH Logo") Utilities

Collection of useful scripts to share with the world!

## Virtual Machines

The folder `/vm` contains several configurations for easily spinning up a test environment. Unless you simply want to exercise your microservice in isolation, you will want to spin up a non-production environment.

## Ansible

The folder `/ansible` contains scripts for configuring servers and development environments.

## Ubuntu
### [Docker Cleanup Script](ubuntu/docker-cleanup)

Bash script that will purge any `exited` instances and any `dangling` images.

**Installation**
Copy the script to `/usr/local/bin` and make sure it's executable.
```
sudo cp ubuntu/docker-cleanup /usr/local/bin/
sudo chmod 755 /usr/local/bin/docker-cleanup
```

**Execution**
Delete all exited containers and dangling images
```
docker-cleanup
```
Lists which containers and images it will purge
```
docker-cleanup --dry-run
```

>>>>>>> fit-utils/master
