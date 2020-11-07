# Linux Hosts Adder

## Table of Contents

- [About](#about)
- [Installing](#installing)
- [Usage](#usage)

## About <a name = "about"></a>

A very simple tool to manage your hosts file

## Installing <a name = "installing"></a>

It's nothing to worry. Just execute the below command.

```sh
sudo install hostsctl /usr/local/bin
```
*OR*

```sh
chmod +x hostsctl
sudo cp hostsctl /usr/local/bin
```

## Usage <a name = "usage"></a>

 Adding a host
```bash
hostsctl -a <ip> <hostname>
```


### Removing a host
```bash
hostsctl -rh <hostname>
```


### Removing an IP
```bash
hostsctl -ri <ip>
```

### Restore last change

You know sometimes we regert the things we do 🤭

```bash
hostsctl --restore
```