#!/usr/bin/env ruby

require 'json'
require 'open-uri'
require 'octoauth'
require 'octokit'

path = 'Puppetfile'
regex = /^halyard '(?<name>\w+)', '(?<version>[\w.]+)'$/

Auth = Octoauth.new note: 'halyard', file: :default, autosave: true
Client = Octokit::Client.new(access_token: Auth.token, auto_paginate: true)

def latest_release(name, old)
  Client.latest_release("halyard/puppet-#{name}").tag_name
rescue Octokit::NotFound
  puts "No releases for #{name}"
  old
end

def update(match)
  _, name, old = match.to_a
  latest = latest_release(name, old)
  puts "Updating #{name} from #{old} to #{latest}" if old != latest
  "halyard '#{name}', '#{latest}'"
end

lines = File.read(path).split("\n").map do |line|
  match = line.match(regex)
  match ? update(match) : line
end

File.open(path, 'w') { |fh| lines.each { |line| fh << "#{line}\n" } }
