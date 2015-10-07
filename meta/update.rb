#!/usr/bin/env ruby

require 'json'
require 'open-uri'

PATH = 'Puppetfile'
REGEX = /^halyard '(?<name>\w+)', '(?<version>[\w.]+)'$/
URL = 'https://forgeapi.puppetlabs.com/v3/modules/halyard-%s'

def latest_release(name)
  'v' + JSON.load(open(URL % name)).fetch('current_release', {})['version']
rescue OpenURI::HTTPError
  puts "No release found for #{name}"
end

def update(match)
  _, name, old = match.to_a
  latest = latest_release(name) || old
  puts "Updating #{name} from #{old} to #{latest}" if old != latest
  "halyard '#{name}', '#{latest}'"
end

lines = File.read(PATH).split("\n").map do |line|
  match = line.match(REGEX)
  match ? update(match) : line
end

File.open(PATH, 'w') { |fh| lines.each { |line| fh << "#{line}\n" } }
