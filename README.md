# server-info

A simple Windows container that prints the `ServerInfo.GetHtml()`.

## Usage

Install [Docker for Windows](https://docs.docker.com/docker-for-windows/) switching the daemon to *Windows Containers*. In Powershell,

```
> docker run jpoon/server-info
> $containerip = docker inspect -f "{{ .NetworkSettings.Networks.nat.IPAddress }}" server-info
> Test-NetConnection $containerip -Port 80
```

## Development

```
$ ./build.ps1
$ docker run --name server-info server-info
```
