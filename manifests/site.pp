include serverless
include hostname
include ntp
include network
include disks
include console
include openssh
include updates
include configvault
include iptables
include loki::client

lookup('classes', Array[String], 'unique', []).include
