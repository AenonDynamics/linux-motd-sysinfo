### 0.8.0 ###

* Added: total amount of available ram + swap in `GiB`
* Changed: short hostname is shown as figlet instead of fqdn

### 0.7.1 ###

* Bugfix: division-by-zero attempt in case no swap is available

### 0.7.0 ###

* Added: `2s` timeout to `df` command
* Changed: Use `/etc/os-release` instead of `lsb_release`

### 0.6.0 ###

* Changed: `/etc/motd` is not altered anymore. only `/etc/update-motd.d/11-sysinfo` symlink will be added

## 0.5.0 ##

* Changed: figlet hostname color to **light blue**
* Removed: Install script "ready" message

## 0.4.0 ##

* Changed: figlet hostname color to **light pruple**

## 0.1.0 ##

* Initial public release