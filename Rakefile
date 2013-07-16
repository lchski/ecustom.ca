require 'nanoc3/tasks'

task :rebuild => [:clean, :compile]

task :newpost do
	%x[cp templates/new-post.md content/articles/new-post.md]
end

task :clean do
	%x[nanoc prune --yes]
end

task :compile do
	%x[nanoc compile]
end

task :deploy do
	%x[ssh ecustom.ca@s135148.gridserver.com 'cd domains/ecustom.ca/html/ && git pull gh master']
end