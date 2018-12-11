Building a simple LAMP stack and deploying Application using Ansible Playbooks.
-------------------------------------------

These playbooks require Ansible 1.2.

These playbooks are meant to be a reference and starter's guide to building
Ansible Playbooks. This playbook was tested on CentOS 7 so I recommend
that you use CentOS or RHEL to test this repo.

RHEL7 version reflects changes in Red Hat Enterprise Linux and CentOS 7:
1. Network device naming scheme has changed
2. iptables is replaced with firewalld
3. MySQL is replaced with MariaDB

This LAMP stack can be on a single node or multiple nodes. The inventory file
'hosts' defines the nodes in which the stacks should be configured.

        [webservers]
        vps1.cloudalbania.com

        [dbservers]
        vps2.cloudalbania

The stack can be deployed using the following command:

        ansible-playbook -i hosts site.yml

Once done, you can check the results by browsing to http://vps1.cloudalbania.com/index.php.
You should see a simple test page and a list of databases retrieved from the database server.
