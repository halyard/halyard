include serverless
include hostname
include ntp

lookup('classes', Array[String], 'unique', []).include
