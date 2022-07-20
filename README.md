# BioArchLinux on Docker

## Install docker and pull image

Install [docker](https://www.docker.com/) and start it

```
docker pull bioarchlinux/bioarchlinux
docker run -it --name container_name bioarchlinux/bioarchlinux
```

## Choose mirror
then you need to choose a mirror of archlinux and bioarchlinux

choose mirror of archlinux from [here](https://archlinux.org/mirrorlist/) and run the following command ( take sdu mirror as the example)

```
echo 'Server = https://mirrors.sdu.edu.cn/archlinux/$repo/os/$arch' > /etc/pacman.d/mirrorlist
```

choose mirror bioarchlinux from [here](https://raw.githubusercontent.com/BioArchLinux/mirror/main/mirrorlist.bio) and run the following command ( take sdu mirror as the example)

```
echo 'Server = https://mirrors.sdu.edu.cn/bioarchlinux/$arch' > /etc/pacman.d/mirrorlist.bio
```

## Use it

Finally, you can install any packages from BioArchLinux
```
pacman -Syu
pacman -S foo
```
