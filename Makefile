all:
	docker build -t antono/iiy-base-ci .
	docker push antono/iiy-base-ci
