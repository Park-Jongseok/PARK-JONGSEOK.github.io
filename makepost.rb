require 'optparse'

## Variables
time = Time.now
@post_path = "./_posts/"
@file_path = "/img/posts/"
background_path = "/img/posts/background/.png"
options = {
    category: 'unclassified'
}

## Optional
OptionParser.new do |opts|
    opts.on('-c', '--category category', [:db, :git, :tools, :ruby, :java], 'Category : db, git, tools, ruby, java') { |o| options[:category] = o}
    opts.on('-n', '--filename filename', 'filename', 'FileName : xxxx-xxxx') { |o| options[:file_name] = o }
end.parse!

file_name = options.fetch(:file_name)

## Category
def check_category(options)
    case options[:category]
        when "db"
            options[:category] = "database"
            @post_path = "#{@post_path}#{options[:category]}/"
            @file_path = "#{@file_path}#{options[:category]}/"
        when "git"
            options[:category] = "git"
            @post_path = "#{@post_path}#{options[:category]}/"
            @file_path = "#{@file_path}#{options[:category]}/"
        when "tools"
            options[:category] = "tools"
            @post_path = "#{@post_path}#{options[:category]}/"
            @file_path = "#{@file_path}#{options[:category]}/"
        when "ruby"
            options[:category] = "languages, ruby"
            @post_path = "#{@post_path}languages/ruby/"
            @file_path = "#{@file_path}languages/ruby/"
        when "java"
            options[:category] = "languages, java"
            @post_path = "#{@post_path}languages/java/"
            @file_path = "#{@file_path}languages/java/"
        when "unclassified"
            options[:category] = "unclassified"
            @post_path = "#{@post_path}#{options[:category]}/"
            @file_path = "#{@file_path}#{options[:category]}/"
        else
            raise "Cannnot find category : #{options.fetch(:category)}"
    end
end

## Write Post
begin
    check_category(options)
    post = File.new("#{@post_path}#{time.strftime('%Y-%m-%d')}-#{file_name}.md", "w+")
    post.syswrite("---\n")
    post.syswrite("layout: post\n")
    post.syswrite("title: \"\"\n")
    post.syswrite("subtitle: \"\"\n")
    if options.key?(:category)
        post.syswrite("categories: [ #{options.fetch(:category)} ]\n")
    end
    post.syswrite("date: #{time.strftime('%Y-%m-%d')} #{time.strftime('%H:%M:%S')} #{time.strftime('%z')}\n")
    post.syswrite("background: #{background_path}\n")
    post.syswrite("---\n")
    post.syswrite("\n## 1. \n")
    post.syswrite("\n![#{file_name}-1](#{@file_path}#{file_name}-1.png)\n")
    post.syswrite("\n#### 참고\n")
    post.syswrite("\n- []()\n")
    puts "File generated"
rescue => e
    puts e.message
ensure
    post.close
end
