$categories = [
  'system',
  'apps',
  'languages',
  'packages'
]

$categories.each |$category| {
  $classification = lookup({
    "name" => $category,
    "merge" => {
      "strategy" => "deep",
      "sort_merge_arrays" => true
    }
  })
  $items.notice
}
