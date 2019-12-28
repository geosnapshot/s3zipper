FROM golang:1.13

ADD . /go/src/github.com/geosnapshot/s3zipper
RUN \
	cd /go/src/github.com/geosnapshot/s3zipper && \
	go get -d && go install && \
	useradd -ms /bin/bash s3zipper

USER s3zipper
ENTRYPOINT ["/go/bin/s3zipper"]

EXPOSE 8080