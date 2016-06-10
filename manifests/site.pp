$categories = [
  'system',
  'apps',
  'languages',
  'packages'
]

$categories.each |$category| {
  hiera_include("includes::${category}", [])
}
