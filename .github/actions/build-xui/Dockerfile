FROM golang

RUN apt-get update && apt-get install -y \
	#		--no-install-recommends \
	build-essential \
	&& rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
