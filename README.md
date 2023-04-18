# Automation with Terraform
The project requires the creation of eight child modules in Terraform for different infrastructure components. The following is a summary of each module:
1. rgroup: This module creates a single resource group and returns its name to the root module.

2. network: This module sets up one virtual network and one subnet, returning their names to the root module.

3. common: This module creates one log analytics workspace, one recovery services vault, and one standard storage account with LRS redundancy. It returns the names of these resources to the root module.

4. vmlinux: This module deploys two CentOS 8.2 Linux VMs with public IP addresses in an availability set. It assigns unique DNS labels, uses a storage account blob container for VM boot diagnostics, and installs the NetworkWatcher extension. The module returns the hostnames, domain names, private IP addresses, and public IP addresses of the VMs to the root module.

5. vmwindows: This module creates one Windows Server 2016 VM with a public IP address in a separate availability set. The VM has the Antimalware extension installed, uses the same storage account blob container for VM boot diagnostics, and has a unique DNS label assigned. The module returns the hostname, domain names, private IP address, and public IP address of the VM to the root module.

6. datadisk: This module creates three 10 GB disks and attaches them to each of the three VMs.

7. loadbalancer: This module deploys one public-facing basic load balancer with both Linux VMs behind it, returning the name of the load balancer to the root module.

8. database: This module creates one Azure DB for PostgreSQL instance and returns its name to the root module.

Additionally, a root module must be created to define all child modules. This module should display the outputs received from child modules on successful deployment.
