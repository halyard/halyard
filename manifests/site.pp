include serverless
include hostname
include ntp
include network
include disks
include console
include openssh

lookup('classes', Array[String], 'unique', []).include
