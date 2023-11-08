### Cloud-Torrent

Original project: https://github.com/jpillora/cloud-torrent

An updated version of the cloud-torrent project with go mod support.

Downloaded files can be processed automatically using an automatic pull tool: https://github.com/cyberchao/cloud-torrent-client

```bash
docker run -d \
  --name cloud-torrent-server \
  -v /root/downloads:/downloads \
  -p 3000:3000 \
  -p 3001:3001 \
  pangru/cloud-torrent-server:0.2 \
  /cloud-torrent-server --auth user:passwd
```
