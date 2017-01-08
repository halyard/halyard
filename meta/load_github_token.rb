#!/usr/bin/env ruby

require 'octoauth'

AUTH_FILE = File.expand_path('~/.octoauth.d/halyard.yml')

Octoauth.new(
  note: 'halyard',
  file: AUTH_FILE,
  autosave: true,
).token
