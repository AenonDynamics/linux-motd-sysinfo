MOTD-SYSINFO
=============================

Displays general system information via pam.motd on login

```
Sun  5 Jan 12:34:52 CET 2020
Debian GNU/Linux 10 (buster) | 4.19.0-6-amd64
            _      
  ___ _ __ (_) ___ 
 / _ \ '_ \| |/ __|
|  __/ |_) | | (__ 
 \___| .__/|_|\___|
     |_|           

System load:    0.40     Memory usage:  11.0%
Local users:    1        Swap usage:    0.0%

Filesystem                                  Size  Used Avail Use% Mounted on
/dev/nvme0n1p3                             2240G 1680G  450G  79% /
/dev/nvme0n1p2                              923M  129M  731M  15% /boot
/dev/nvme0n1p1                              511M  5.1M  506M   1% /boot/efi

andi@sapphire:~$
```

## Package Installation ##

### 1. Add Aenon-Dynamics Repository ###

```bash
# download the gpg key
wget -O /usr/share/keyrings/aenon-dynamics.gpg https://packages.aenon-dynamics.com/static/pubkey.gpg

# add apt repository with pinned key
echo "deb [signed-by=/usr/share/keyrings/aenon-dynamics.gpg] https://packages.aenon-dynamics.com/debian stable main" > /etc/apt/sources.list.d/aenon-dynamics.list
```

### 2. Install the Package ###

```
apt-get update
apt-get install motd-sysinfo
```

## Manual Installation ##

```bash
# copy script
cp motd-sysinfo /usr/bin/motd-sysinfo

# mark it executable
chmod 0755 /usr/bin/motd-sysinfo

# add symlink
ln -s /usr/bin/motd-sysinfo /etc/update-motd.d/11-sysinfo
```

### Dependencies ###

The script uses the `figlet` package to display the hostname

```
apt-get install figlet
```

## Distributions ##

Tested with:

* Debian Jessie
* Debian Stretch
* Debian Buster

## Contribution ##

The **.deb** package is automatically generated via a **Continuous Delivery Pipeline** - please do not build packages manually!

## License ##
MOTD-SYSINFO is OpenSource and licensed under the Terms of [The MIT License (X11)](http://opensource.org/licenses/MIT) - your're welcome to contribute