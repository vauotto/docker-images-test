# Node Build Container

```sh
docker pull ghcr.io/philips-internal/emr-devops-containers
```

## GitHub Actions

```yaml
container:
  image: ghcr.io/philips-internal/emr-devops-containers
```

## Container

| Linux                                | Kernel  | Arch  |
| ------------------------------------ | ------- | ----- |
| Ubuntu 22.04.2 LTS (Jammy Jellyfish) | 5.15.49 | amd64 |
| Ubuntu 22.04.2 LTS (Jammy Jellyfish) | 5.15.49 | arm64 |

## Installed tools

|    **Tool**     | **Version** |
| :-------------: | :---------: |
|       Git       |   2.34.1    |
|   GitHub CLI    |   2.32.1    |
|     AWS CLI     |   2.13.5    |
| PowerShell Core |    7.3.6    |
|      Curl       |   7.81.0    |
|      Unzip      |    6.00     |
|       nvm       |   0.39.4    |
