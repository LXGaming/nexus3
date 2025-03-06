# nexus3

[![License](https://img.shields.io/github/license/LXGaming/nexus3?label=License&cacheSeconds=86400)](https://github.com/LXGaming/nexus3/blob/main/LICENSE)
[![Docker Hub](https://img.shields.io/docker/v/lxgaming/nexus3/latest?label=Docker%20Hub)](https://hub.docker.com/r/lxgaming/nexus3)

## Archive
[Sonatype Nexus Repository v3.78.0](https://help.sonatype.com/en/sonatype-nexus-repository-3-78-0-release-notes.html#save-on-infrastructure--arm-docker-images-now-available) includes arm64 docker images which makes this repository obsolete.

## Usage
### docker-compose
```yaml
services:
  nexus:
    container_name: nexus
    image: lxgaming/nexus3:latest
    restart: unless-stopped
    volumes:
      - /path/to/nexus/data:/nexus-data
```

## Credits
[sonatype/docker-nexus3](https://github.com/sonatype/docker-nexus3)

## License
nexus3 is licensed under the [Apache 2.0](https://github.com/LXGaming/nexus3/blob/main/LICENSE) license.