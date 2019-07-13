# HOSTS Adder (hostsctl) - Bash

## How to install

> run the installer.sh
```bash
chmod +x installer.sh

./installer.sh
```
- OR
```bash
bash installer.sh
```

> You can also copy it to the /usr/bin directory and apply execute permission

```bash
chmod +x hostsctl
mv hostsctl /usr/bin
```


# How to use ?

### Adding a host
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

You know some times we regerts the things we do :laughing:

```bash
hostsctl --restore <ip>
```

# Have a suggestion ? 
Alayws here to hear it :smile: [Contact Me](amaljohnronkha@protonmail.com)
