VERSION_TAG = latest
REPO_NAME = "pimlab/twigdumpdetector"

.PHONY = all build test tag

all: build test tag

build:
	@docker image rm -f $(REPO_NAME):$(VERSION_TAG) twigdumpdetector:$(VERSION_TAG); \
	docker build --rm --tag twigdumpdetector:$(VERSION_TAG) ./ ; \

test:
	@docker run --rm --tty twigdumpdetector:$(VERSION_TAG); \

tag:
	@docker tag twigdumpdetector:$(VERSION_TAG) $(REPO_NAME):$(VERSION_TAG); \
	docker push $(REPO_NAME):$(VERSION_TAG); \
