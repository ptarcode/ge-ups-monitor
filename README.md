# GE UPS Monitor #
# *Communication with GEDE-SNMP-UPS-Interface* #

## Installation ##

### Install Python dependecies ### 
  >
```
pip install configparser
pip install pyserial
pip install pyarmor
```
---

### Installation directory files ###

* **config.ini** Configuration file. 
* **crontab.sh** Shell script to be added to crontab.
* **ge_ups_monitor.py** Python script responsible for UPS monitoring.

#### PyArmor [Documentation](https://pypi.org/project/pyarmor/) ####
* **license.lic** The license file for obfuscated scripts 
* **pytransform.key** Data file
* **pytransform.py**  A normal python module
* **pytransform.pyc**     
* **_pytransform.so** A dynamic library implements core functions

## Usage ##

### Configuration ###
#### config.ini ####
>
```
[DEFAULT]

;Serial port used for communication with the UPS
SERIAL_PORT = /dev/ttyS0  

;The number of symbols per second transferred
BAUD_RATE = 115200

;URL to access GEDE-SNMP-UPS-Interface
HOST = 192.168.1.97      

;Default user of GEDE-SNMP-UPS-Interface
USER = ge                

;Default password for GEDE-SNMP-UPS-Interface
PASSWORD = ge            

;Time onBatery until shutdown.
MINUTES = 2              
   
;Here you can add the list of hosts for remote shutdown.
;Using SSH public-key authentication to connect to a remote system. 
;SSH public-key authentication relies on asymmetric cryptographic 
;algorithms that generate a pair of separate keys (a key pair), one 
;"private" and the other "public". You keep the private key a secret 
;and store it on the computer you use to connect to the remote system. 
;Conceivably, you can share the public key with anyone without compromising 
;the private key; you store it on the remote system in a .ssh/authorized_keys 
;directory.

[REMOTE_SHUTDOWN]
HOST1 = root,example1.com
HOST2 = root,example2.com
HOST3 = root,example3.com
HOST4 = root,example4.com
```
--- 

#### crontab ####

>
```
    */1 * * * * /path_de_instalacao/crontab.sh >> /var/log/ge_ups_monitor.log 2>&1
```
---

#### python-crontab [Documentation](https://pypi.org/project/python-crontab/) ####

>
```
    from crontab import CronTab
    cron = CronTab(user='username')  
    job = cron.new(command='python /path_de_instalacao/ge_ups_monitor.py')  
    job.minute.every(1)
    cron.write()
```
---

## Dependencies ##

    configparser  : ">=3.7.3"
    pyserial      : ">=3.4"
    pyarmor       : ">=5.2.3"

<!---
## Contributing ##

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
-->

## License ##

Copyright (c) 2019 Paulo de Tarço

MIT License

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
