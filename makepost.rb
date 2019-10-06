require 'optparse'

time = Time.now
post_path = "./_posts/"
background_path = "/img/posts/background/"
options = {}
OptionParser.new do |opt|
    opt.on('-t', '--post_title title') { |o| options[:title] = o }
end.parse!

begin
    post = File.new("#{post_path}#{time.strftime('%Y-%m-%d')}-#{options.fetch(:title)}.md", "w+")
    post.syswrite("---\n")
    post.syswrite("layout: post\n")
    post.syswrite("title: \"#{options.fetch(:title)}\"\n")
    post.syswrite("subtitle: \"#{options.fetch(:title)}-subtitle\"\n")
    post.syswrite("date: #{time.strftime('%Y-%m-%d')} #{time.strftime('%H:%M:%S')} #{time.strftime('%z')}\n")
    post.syswrite("background: #{background_path}.png\n")
    post.syswrite("---\n")
    post.syswrite("\n")
    post.syswrite("## ")
    post.syswrite("\n")
    post.syswrite("![#{options.fetch(:title)}-1](\\img\\posts\\#{options.fetch(:title)}-1.png)")
    post.close
    puts "File generated"
rescue => e
    puts "File Error"
end
