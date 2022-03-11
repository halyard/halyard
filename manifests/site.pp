include serverless
include hostname
include ntp
include network
include disks
include console

lookup('classes', Array[String], 'unique', []).include
