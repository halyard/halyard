include serverless
include hostname
include ntp
include network
include disks

lookup('classes', Array[String], 'unique', []).include
