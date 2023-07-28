#!/bin/bash

#enter the instance name used in deployment
iname="my_instance_name"
iid=`tccli lighthouse DescribeInstances | grep -B 5 $iname | grep InstanceId | cut -d ":" -f2 | cut -c 3-16` 

#delete default firewall rules of the instance
tccli lighthouse DeleteFirewallRules --cli-unfold-argument --InstanceId $iid --FirewallRules.0.Protocol ICMP --FirewallRules.0.Port ALL --FirewallRules.0.CidrBlock '0.0.0.0/0' --FirewallRules.0.Action ACCEPT
tccli lighthouse DeleteFirewallRules --cli-unfold-argument --InstanceId $iid --FirewallRules.0.Protocol TCP --FirewallRules.0.Port 3389 --FirewallRules.0.CidrBlock '0.0.0.0/0' --FirewallRules.0.Action ACCEPT
tccli lighthouse DeleteFirewallRules --cli-unfold-argument --InstanceId $iid --FirewallRules.0.Protocol TCP --FirewallRules.0.Port 22 --FirewallRules.0.CidrBlock '0.0.0.0/0' --FirewallRules.0.Action ACCEPT
tccli lighthouse DeleteFirewallRules --cli-unfold-argument --InstanceId $iid --FirewallRules.0.Protocol TCP --FirewallRules.0.Port 443 --FirewallRules.0.CidrBlock '0.0.0.0/0' --FirewallRules.0.Action ACCEPT
tccli lighthouse DeleteFirewallRules --cli-unfold-argument --InstanceId $iid --FirewallRules.0.Protocol TCP --FirewallRules.0.Port 80 --FirewallRules.0.CidrBlock '0.0.0.0/0' --FirewallRules.0.Action ACCEPT
