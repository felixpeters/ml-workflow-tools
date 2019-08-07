update-env:
	conda env export > environment.yml

build-image:
	docker build -t ml_workshop .

run-image:
	docker run -d -p 8888:8888 -v nbs:/nbs ml_workshop
