#Linux Answers

* What is the command to list the contents of a direcory, line by line and ordered by size ascending in human readable format?
    ls -lSh

* How would you add a DNS server to a network interface in Linux?
  - Disable Network Manager and edit /etc/network/interfaces
  - add your config for the servers: put dns-* options in either the iface eth0 inet static stanza or the iface eth0 inet6 static stanza
  - soon as the interface become active the DNS server will be active ($ sudo ifup eth0)

* If the DNS server you've just added is not reachable, how can you get any particular hostname to resolve locally?
  - Adding the hostname entry in /etc/hosts
  - 216.58.223.132    www.google.com

* How would you check for SELinux related errors?
     /var/log/audit/audit.log

* Write the commands to add 30GB disk space to a logical volume named "docker" that belongs to a logical group named "docker-group".
  - To view or confirm free space: vgdisplay
  - Add 30G: lvextend -L +30G /dev/docker-group/docker
  
#Docker

* Create an encrypted file called "secret" in the root of this repository that contains the root password of the database (the password must be "thisisadatabasepassword123456789!").
  - openssl passwd -1 thisisadatabasepassword123456789! > secret 
* Change your Bash script to start the conainer using the root password from the "secret" file.
  - echo -e "$(cat secret)\n$(cat secret)" | docker exec -i  ALFRED passwd
  
#General

* How would you ensure any change made to this Dockerfile is source controlled, approved, tested and deployed.  - Branching and merge request on the repository 
     * Explain which tools you will use as if this was going into a production environment.  
		- Jenkins/Gitlab to create a CI/CD deployment pipelines
		- Maven to build the code
		- Github/SVN/Gitlab for code repo
		- Selenium to run your tests suits
		- Service Now/Azure Board/Jira for tracking changes and logging change requests and getting them approved
		- Dynatrace/Splunk to moitor the application and the container