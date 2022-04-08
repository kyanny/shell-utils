require 'erb'
require 'ostruct'

tmpl = <<TMPL
# <%= dir %>

<% items.each do |item| %>
## [<%= item.name %>](./<%= item.name %>)

```
<%= item.content %>
```
<% end %>
TMPL

task :default do
  Dir['**/*'].select{ |dir| File.directory?(dir) }.each do |dir|
    Dir.chdir(dir) do
      items = []
      Dir['*'].select{ |file| File.file?(file) }.each do |file|
        item = OpenStruct.new
        item.name = file
        item.content = File.read(file)
        items << item
      end
      File.write('README.md', ERB.new(tmpl).result(binding))
    end
  end
end
