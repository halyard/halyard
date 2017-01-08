#!/usr/bin/env ruby

require 'octoauth'
require 'fileutils'

AUTH_FILE = File.expand_path('~/.octoauth.d/halyard.yml')

FileUtils.mkdir_p File.dirname(AUTH_FILE)

Octoauth.new(
  note: 'halyard',
  file: AUTH_FILE,
  autosave: true,
).token
