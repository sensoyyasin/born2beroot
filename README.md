# Born2BeRoot

Virtualization allow us share a system with multiple virtual environments. The hypervisor manages the hardware system and separate the physical resources from the virtual environments. The resources are managed followitn the needs, from the host to the guests. When an user from a VM do a task that requires additional resources from the physical environment, the hypervisor manages the request so that the guest OS could access the resources of the physical environment.
Once we know how they work, it is a good idea to see all the advantages we get from using virtual machines:

Different guest machines hosted on our computer can run different operating systems, so we will have different OS working on the same machine.
They provide an environment in which to safely test unstable programs to see if they will affect the system or not.
We get better use of shared resources.
We reduce costs by reducing physical architecture.
They are easy to implement because they provide mechanisms to clone a virtual machine to another physical device.

# Monitoring
You have to create a simple script called monitoring.sh It must be developed in bash. At server startup, the script will display some information (listed below) on all ter- minals every 10 minutes (take a look at wall). The banner is optional. No error must be visible. Your script must always be able to display the following information:
• The architecture of your operating system and its kernel version.
• The number of physical processors.
• The number of virtual processors.
• The current available RAM on your server and its utilization rate as a percentage.
• The current available memory on your server and its utilization rate as a percentage.
• The current utilization rate of your processors as a percentage.
• The date and time of the last reboot.
• Whether LVM is active or not.
• The number of active connections.
• The number of users using the server.
• The IPv4 address of your server and its MAC (Media Access Control) address.
• The number of commands executed with the sudo program.

# What is LVM?
LVM (Logical Volume Manager) is an abstraction layer between a storage device and a file system. We get many advantages from using LVM, but the main advantage is that we have much more flexibility when it comes to managing partitions.

# What is AppArmor?
AppArmor provides Mandatory Access Control (MAC) security. In fact, AppAmor allows the system administrator to restrict the actions that processes can perform. For example, if an installed application can take photos by accessing the camera application, but the administrator denies this privilege, the application will not be able to access the camera application. If a vulnerability occurs (some of the restricted tasks are performed), AppArmor blocks the application so that the damage does not spread to the rest of the system.
In AppArmor, processes are restricted by profiles.

#How to use SSH?
SSH or Secure Shell is a remote administration protocol that allows users to control and modify their servers over the Internet thanks to an authentication mechanism. Provides a mechanism to authenticate a user remotely, transfer data from the client to the host, and return a response to the request made by the client.
SSH was created as an alternative to Telnet, which does not encrypt the information that is sent. SSH uses encryption techniques to ensure that all client-to-host and host-to-client communications are done in encrypted form. One of the advantages of SSH is that a user using Linux or MacOS can use SSH on their server to communicate with it remotely through their computer's terminal. Once authenticated, that user will be able to use the terminal to work on the server.

The command used to connect to a server with ssh is:

-> ssh {username}@{IP_host} -p {port}

There are three different techniques that SSH uses to encrypt:

* Symmetric encryption: a method that uses the same secret key for both encryption and decryption of a message, for both the client and the host. Anyone who knows the password can access the message that has been transmitted.
* Asymmetric encryption: uses two separate keys for encryption and decryption. These are known as the public key and the private key. Together, they form the public-private key pair.
* Hashing: another form of cryptography used by SSH. Hash functions are made in a way that they don't need to be decrypted. If a client has the correct input, they can create a cryptographic hash and SSH will check if both hashes are the same.

# What is cron and what is wall?

Cron: Linux task manager that allows us to execute commands at a certain time. We can automate some tasks just by telling cron what command we want to run at a specific time. For example, if we want to restart our server every day at 4:00 am, instead of having to wake up at that time, cron will do it for us.
Wall: command used by the root user to send a message to all users currently connected to the server. If the system administrator wants to alert about a major server change that could cause users to log out, the root user could alert them with wall.

<img width="891" alt="Ekran Resmi 2022-03-15 ÖÖ 11 15 52" src="https://user-images.githubusercontent.com/73845925/158335483-804beccc-596a-47f3-97c7-441ad2076957.png">


