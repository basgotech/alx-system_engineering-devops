0-change_your_home_IP
Bash script to configure an Ubuntu server
This Bash script configures an Ubuntu server with the following requirements:

localhost resolves to 127.0.0.2
facebook.com resolves to 8.8.8.8.
Usage:

# Output: PING localhost (127.0.0.1) ...

# Output: PING facebook.com (157.240.11.35) ...

./0-change_your_home_IP
# Script execution

# Output: PING localhost (127.0.0.2) ...

# Output: PING facebook.com (8.8.8.8) ...

Note:

Before running the script, localhost resolves to 127.0.0.1, and facebook.com resolves to 157.240.11.35.
After running the script, localhost resolves to 127.0.0.2, and facebook.com resolves to 8.8.8.8.
If running this script on a machine you'll continue to use, be sure to revert localhost to 127.0.0.1.

1-show_attached_IPs
Bash script to display active IPv4 IPs
This Bash script displays all active IPv4 IPs on the machine it’s executed on.

Usage:

./1-show_attached_IPs | cat -e

# Output: 10.0.2.15$
#         127.0.0.1$

Note: IPs displayed may vary depending on the machine.

100-port_listening_on_localhost
Bash script for port listening on localhost
This Bash script listens on port 98 on localhost and demonstrates a simple connection using telnet between two terminals.

Usage:

Terminal 0 (Listening)
./100-port_listening_on_localhost

Terminal 1 (Connecting)
telnet localhost 98
# Type some text (e.g., Hello world)

Terminal 0 (Receiving)
sudo ./100-port_listening_on_localhost
Hello world
test

Author = Basliel Tegegn
Email = basgolilo5@gmail.com
Phone = (+251) 910627574
