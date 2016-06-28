#`git fetch origin`
#files[] = `git diff --name-only new_origin/master`
require 'find'
filename=[]
Find.find("db/migrate") do |path|
	filename << path if path =~ /(\d+)_*.rb/
end
puts filename
