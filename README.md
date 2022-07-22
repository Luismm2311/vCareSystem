# vCareSystem
This is a fork of [Utappia's uCareSystem](https://github.com/Utappia/uCareSystem) that uses the [nala package manager](https://gitlab.com/volian/nala) inastead of APT and APT-GET.

It is still a work in progress
## Description:

In summary, vCareSystem automatically performs the following maintenance processes without any need of user interference :

- Checks for the fastest mirros
- Updates the list of available packages
- Downloads and installs the available updates
- Checks if there are older Linux kernels on the system and removes them. However it keeps the current and one previous version of the kernel.
- Cleans the cache of the downloaded packages
- Removes obsolete packages
- Removes orphan packets
- Deletes package configuration files from packages that have been uninstalled by you.
                                          
## Usage

You can invoke it throu terminal with variours parameters/ flags. The default system updates and maintenace for Ubuntu / debian / Linux Mint (and derivatives) :

	sudo vcaresystem

If your Ubuntu (and official flavors) has reached the EOL support you can upgrade to the next supported release with '-eol':
	
	sudo vcaresystem -eol

For information about all the availabe parameters / flags, start ucaresystem-core with '-h' parameter :

	sudo vcaresystem -h

## Appendix

Any additional information goes here


## Installation

First ypu need to install [nala](https://gitlab.com/volian/nala#installation)

```bash
echo "deb http://deb.volian.org/volian/ scar main" | sudo tee /etc/apt/sources.list.d/volian-archive-scar-unstable.list
wget -qO - https://deb.volian.org/volian/scar.key | sudo tee /etc/apt/trusted.gpg.d/volian-archive-scar-unstable.gpg > /dev/null
sudo apt update
```
For Ubuntu 22.04, Debian Sid and newer.
```bash
sudo apt install nala -y
```
For older distributions like Ubuntu 21.04, Debian Stable and older.
```
sudo apt install nala-legacy -y
```
Now run:
```
curl -s https://raw.githubusercontent.com/Luismm2311/vCareSystem/master/install.sh|sudo bash
