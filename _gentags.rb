require 'yaml'
tags = []
Dir.glob(File.join('_posts','*.md')).each do |file|
    yaml_s = File.read(file).split(/^---$/)[1]
    yaml_h = YAML.load(yaml_s)
    if yaml_h['tags'] then
        print yaml_h['tags'], "\n"
        tags += yaml_h['tags']
    end
end

tags.map(&:downcase).uniq.each do |tag|
    File.write File.join('tags', "#{tag}.html"), <<-EOF
---
layout: tag
tag: #{tag}
permalink: /tags/#{tag}
---
    EOF
end
