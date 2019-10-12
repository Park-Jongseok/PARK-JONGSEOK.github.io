require 'optparse'

## Variables
time = Time.now
@post_path = "./_posts/"
@file_path = "./img/posts/"
background_path = "/img/posts/background/.png"
options = {}

## Optional
OptionParser.new do |opt|
    opt.on('-c', '--category category') { |o| options[:category] = o}
    opt.on('-n', '--filename filename') { |o| options[:file_name] = o }
end.parse!

file_name = options.fetch(:file_name)

## Category
def checkCategory(options)
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
        when nil
            options[:category] = "unclassified"
            @post_path = "#{@post_path}#{options[:category]}/"
            @file_path = "#{@file_path}#{options[:category]}/"
        else
            raise "Cannnot find category : #{options.fetch(:category)}"
    end
end

## Write Post
begin
    checkCategory(options)
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
    post.syswrite("\n## \n")
    post.syswrite("\n![#{file_name}-1](#{@file_path}#{file_name}-1.png)")
    puts "File generated"
rescue => e
    puts e.message
ensure
    post.close
end
