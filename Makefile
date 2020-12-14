SHELL:=/bin/zsh

start:
	bundle exec jekyll serve --livereload

deploy:
	jekyll build
	git add .
	git commit -m "deploy"
	git push origin master
	git push heroku master
		
