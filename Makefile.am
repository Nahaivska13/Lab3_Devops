PACKAGE = program
VERSION = 1.0
PACKAGE_BUGREPORT = daryna.nahaivska2017@gmail.com

AUTOMAKE_OPTIONS = foreign subdir-objects

TESTS = test_euler.cpp
bin_PROGRAMS = program
your_program_name_SOURCES = main.cpp euler.cpp

check_PROGRAMS = test_program

test_program_SOURCES = test_euler.cpp euler.cpp

check: $(check_PROGRAMS)
    ./test_program


docker:
    @echo "Building Docker image..."
    echo "FROM ubuntu:latest" > Dockerfile
    echo "MAINTAINER $(PACKAGE_BUGREPORT)" >> Dockerfile
    echo "COPY . /opt/$(PACKAGE)" >> Dockerfile
    echo "RUN apt-get update && apt-get install -y build-essential" >> Dockerfile
    echo "RUN g++ -o /opt/$(PACKAGE)/program /opt/$(PACKAGE)/main.cpp /opt/$(PACKAGE)/euler.cpp" >> Dockerfile
    echo "ENTRYPOINT [\"/opt/$(PACKAGE)/program\"]" >> Dockerfile
    docker build -t $(PACKAGE):$(VERSION) .

docker-push:
	@echo "Pushing Docker image to DockerHub..."
	@if [ -z "$(DOCKER_USER)" ] || [ -z "$(DOCKER_PASS)" ]; then \
		echo "Please set DOCKER_USER and DOCKER_PASS environment variables"; \
		exit 1; \
	fi
	echo "$(DOCKER_PASS)" | docker login -u "$(DOCKER_USER)" --password-stdin
	docker tag $(PACKAGE):$(VERSION) $(DOCKER_USER)/$(PACKAGE):$(VERSION)
	docker push $(DOCKER_USER)/$(PACKAGE):$(VERSION)
	docker logout
	echo Maintainer: $(PACKAGE_BUGREPORT) >> $(CTRLF_NAME)
	echo -n "Description: " >> $(CTRLF_NAME)
	echo "calculation software" >> $(CTRLF_NAME)
	make DESTDIR=$(CURDIR)/deb install
