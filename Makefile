all:
	docker build -t hugo:latest .
	docker tag hugo:latest dcai/hugo:v0.32.4
	docker push dcai/hugo:v0.32.4
