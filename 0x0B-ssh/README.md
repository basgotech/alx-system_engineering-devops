Project: alx-system_engineering-devops
Directory: 0x0B-ssh
0. Use a private key (Script)
A Bash script that uses SSH to connect to your server using the private key ~/.ssh/school with the user ubuntu.

bash
#!/bin/bash
ssh -i ~/.ssh/school ubuntu@server01
1. Create an SSH key pair (Script)
A Bash script that creates an RSA key pair.

bash
#!/bin/bash
ssh-keygen -t rsa -b 4096 -C "vagrant@ubuntu" -f ~/.ssh/school
2. Client configuration file (Configuration)
SSH client configuration file for the local SSH client.

bash
Host *
    IdentityFile ~/.ssh/school
    PasswordAuthentication no
3. Let me in! (Key)
Add the following SSH public key to your server so that others can connect using the ubuntu user.

bash
4. Client configuration file (w/ Puppet) (Puppet Script)
Using Puppet to make changes to the client SSH configuration file.


file_line { "Turn off passwd auth":
  path => '/etc/ssh/sshd_config',
  line => 'PasswordAuthentication no',
}

file_line { "Declare identity file":
  path => '/etc/ssh/ssh_config',
  line => '    IdentityFile ~/.ssh/school',
}


<<<< Author Basliel Tegegn >>>>
