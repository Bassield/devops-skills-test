#Linux Answers

* What is the command to list the contents of a direcory, line by line and ordered by size ascending in human readable format?
  * - ls -lSh

* How would you add a DNS server to a network interface in Linux?
 * - Disable Network Manager and edit /etc/network/interfaces
 * - add your config for the servers: put dns-** options in either the iface eth0 inet static stanza or the iface eth0 inet6 static stanza
 * - soon as the interface become active the DNS server will be active ($ sudo ifup eth0)

* If the DNS server you've just added is not reachable, how can you get any particular hostname to resolve locally?
 * - Adding the hostname entry in /etc/hosts
 * - 216.58.223.132    www.google.com

* How would you check for SELinux related errors?
    * /var/log/audit/audit.log

* Write the commands to add 30GB disk space to a logical volume named "docker" that belongs to a logical group named "docker-group".
 * - To view or confirm free space: vgdisplay
 * - Add 30G: lvextend -L +30G /dev/docker-group/docker