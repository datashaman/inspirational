build:
	docker build --rm -t scheduler .

run:
	docker run -it -v $(shell pwd)/crontab:/etc/cron.d/app -v $(shell pwd):/var/app scheduler
