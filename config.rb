activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

data.earworms.each do |date, worm|
  proxy(
    "/earworms/#{worm.id}.json",
    "/earworms/template.json",
    locals: { worm: worm },
    ignore: true
  )
end
