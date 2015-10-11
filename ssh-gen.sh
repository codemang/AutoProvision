#!/usr/bin/expect -f

set timeout 10
set email [lindex $argv 0];
set ssh_path [lindex $argv 1];
spawn ssh-keygen -t rsa -b 4096 -C $email
expect "/.*/" { send "$ssh_path\r" }
interact
