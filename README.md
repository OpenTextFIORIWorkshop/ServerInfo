# ServerInfo

A simple Windows container that prints the ServerInfo.

## Usage

Install [Docker for Windows](https://docs.docker.com/docker-for-windows/) switching the daemon to *Windows Containers*. In Powershell,

```
$ ./build.ps1
$ docker run --name server-info server-info
$ docker inspect -f "{{ .NetworkSettings.Networks.nat.IPAddress }}" server-info

