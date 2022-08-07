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
include prometheus::client::node

lookup('classes', Array[String], 'unique', []).include

package { lookup('packages', Array[String], 'unique', []): }
