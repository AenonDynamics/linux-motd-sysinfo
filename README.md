MOTD-SYSINFO
=============================

Displays general system information via pam.motd on login

```
Using username "andi".
Authenticating with public key

System Data as of: Sun Apr 16 17:02:50 UTC 2017
Debian GNU/Linux 8.7 (jessie) 3.16.0-4-amd64
                       _     _
 ___  __ _ _ __  _ __ | |__ (_)_ __ ___
/ __|/ _` | '_ \| '_ \| '_ \| | '__/ _ \
\__ \ (_| | |_) | |_) | | | | | | |  __/
|___/\__,_| .__/| .__/|_| |_|_|_|  \___|
          |_|   |_|

System load:    0.05    Memory usage:   17.6%
Local users:    1       Swap usage:     0.0%

Filesystem      Size  Used Avail Use% Mounted on
/dev/sdb2        25G   13G   11G  54% /
/dev/sda1       118T   43T   69T  39% /home/andi
/dev/sdb1       511M  132K  511M   1% /boot/efi

Last login: Sun Apr 16 17:01:54 2017 from infinity.localnet
andi@sapphire:~$
```

## Package Installation ##

### 1. Add Aenon-Dynamics Repository ###

**/etc/apt/sources.list.d/aenon-dynamics.list**

```
deb https://packages.aenon-dynamics.com/debian jessie main
```

### 2. Install the Package ###

```
apt-get update
apt-get install motd-sysinfo
```

## Manual Installation ##

Copy the `motd-sysinfo` script to `/usr/bin/motd-sysinfo` and make it executable via `chmod 0755 /usr/bin/motd-sysinfo`. Finally run the `install.sh` script to setup the symlinks

### Dependencies ###

The script uses the `figlet` package to display the hostname

```
apt-get install figlet
```

## Mode of Operation ##

tbc..

## Distributions ##

Tested with:

* Debian Jessie 8.7

## Contribution ##

The **.deb** package is automatically generated via a **Continuous Delivery Pipeline** - please do not build packages manually!

## License ##
MOTD-SYSINFO is OpenSource and licensed under the Terms of [The MIT License (X11)](http://opensource.org/licenses/MIT) - your're welcome to contribute