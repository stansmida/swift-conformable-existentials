
# Verify build and test on Linux and delete immediately.
verify_linux:
	docker build --no-cache -t swift-conformable-existential:latest .
	docker run -it --rm swift-conformable-existential:latest
	docker rmi swift-conformable-existential:latest
