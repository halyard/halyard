if $::id == 'root' {
  fail('Failed to set $::id to non-root user, refusing to run')
}
