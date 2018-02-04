function gitpushall --description "push all of it"
	git add .
	git commit -m $argv
	git push
end
