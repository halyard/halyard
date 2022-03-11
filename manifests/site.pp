include serverless
include hostname
include ntp
include network

lookup('classes', Array[String], 'unique', []).include
