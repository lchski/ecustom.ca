require 'nanoc3/tasks'

task :rebuild => [:clean, :compile]

task :newpost do
	system('copy', 'templates\new-post.md', 'content\articles\new-post.md')
end

task :clean do
	system('rmdir', '/s', '/q', 'output', 'tmp')
	system('echo', 'Removed ./output/')
	system('echo', 'Removed ./tmp/')
end

task :compile do
	system('nanoc', 'compile')
end