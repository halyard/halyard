#!/usr/bin/env ruby

require 'json'
require 'yaml'

Dir.chdir(File.dirname(__FILE__))

hosts = Dir.glob('../data/mac/*.yaml').map do |file|
  YAML.safe_load(File.read(file), aliases: true).fetch_values(
    'hostname::hostname',
    'hostname::domain',
  )
end

hostvars = hosts.map do |host, domain|
  [
    host,
    { 'ansible_host': [host, domain].join('.') },
  ]
end.to_h

inventory = {
  _meta: {
    hostvars: hostvars,
  },
  all: {
    children: [
      'ungrouped'
    ]
  },
  ungrouped: {
    hosts: hosts.map(&:first)
  }
}

puts JSON.pretty_generate(inventory)
