# BioArchLinux on Docker

## Install docker and start container

Install [docker](https://www.docker.com/) and start it

```
# docker pull bioarchlinux/bioarchlinux
# docker run -it --privileged --name container_name --restart=always bioarchlinux/bioarchlinux /bin/bash
```
## Configure container

### Choose mirror
then you need to choose a mirror of archlinux and bioarchlinux

choose mirror of archlinux from [here](https://archlinux.org/mirrorlist/) and run the following command ( take sdu mirror as the example)

```
# echo 'Server = https://mirrors.sdu.edu.cn/archlinux/$repo/os/$arch' > /etc/pacman.d/mirrorlist
```

choose mirror bioarchlinux from [here](https://raw.githubusercontent.com/BioArchLinux/mirror/main/mirrorlist.bio) and run the following command ( take sdu mirror as the example)

```
# echo 'Server = https://mirrors.sdu.edu.cn/bioarchlinux/$arch' > /etc/pacman.d/mirrorlist.bio
```

### Use it

Finally, you can install any packages from BioArchLinux
```
# pacman -Syu
# pacman -S foo
```

### Exit
```
# exit
```

## Enter container

If the container is stoped, `container_name` can be replaced with `container_id`
```
# docker restart container_name
# docker exec -it container_name /bin/bash
```

If the container is running, `container_name` can be replaced with `container_id`
```
# docker exec -it container_name /bin/bash
```
## Get container information
```
# docker ps -a

CONTAINER ID   IMAGE                       COMMAND       CREATED       STATUS       PORTS     NAMES
96bfaee1b8cb   bioarchlinux/bioarchlinux   "/bin/bash"   2 hours ago   Up 2 hours             bio
```
