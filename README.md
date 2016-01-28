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
