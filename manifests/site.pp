include serverless
include hostname
include ntp
include network
include disks
include console
include openssh
include updates
include configvault

lookup('classes', Array[String], 'unique', []).include
