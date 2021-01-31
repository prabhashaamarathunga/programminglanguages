#20204646

#reference: https://alvinalexander.com/blog/post/ruby/how-use-ruby-list-files-in-directory
#reference: https://www.thoughtco.com/using-glob-with-directories-2907832

require 'find'
base_directory = '/'
confRuby = Dir.glob('/**/*.conf')
puts confRuby