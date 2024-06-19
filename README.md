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

	sudo vCareSystem

If after the update a restart is needed, you can use '-r' to restart the sistem after the update

	sudo vCareSystem -r

If you want to shutdown your system afer the update you can use '-s'

	sudo vCareSystem -s
If you wnat to search for the best APT servers, you can use '-f'
	
	sudo vCareSystem -f
If there is a new release of Ubuntu (and official flavors), you can upgrade to it with '-u':

	sudo vCareSystem -u

If there is a new development release of Ubuntu (and official flavors), you can upgrade to it with '-d':

	sudo vCareSystem -d

If your Ubuntu (and official flavors) has reached the EOL support you can upgrade to the next supported release with '-eol':
	
	sudo vCareSystem -eol

For information about all the availabe parameters / flags, start ucaresystem-core with '-h' parameter :

	sudo vCareSystem -h


## Installation

First you need to install [nala](https://gitlab.com/volian/nala/-/wikis/Installation)
For Ubuntu 24.04 and Debina 12 or newer:
```bash
sudo apt install nala
```
For Ubuntu 20.04, 22.04 and Debian 11:
```bash
curl https://gitlab.com/volian/volian-archive/-/raw/main/install-nala.sh | bash
```
If the script fails:
```bash
sudo apt install -t nala nala
```
For older distributions like Ubuntu 18.4, Debian 10 and older:

Unfortunately Nala will not work on these releases or older.
The python versions are too old, and they don't have the required packages.


After nala is installed, now run:

```
curl -s https://raw.githubusercontent.com/Luismm2311/vCareSystem/master/install.sh | sudo bash
