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

You can find the script monitoring.sh in this repository.
