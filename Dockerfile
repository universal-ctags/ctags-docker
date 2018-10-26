FROM alpine:3.7
LABEL maintainer="Dan Itsara <dan@glazziq.com>" license="GPL-3.0-or-later"

RUN \
  # add runtime dependencies
  apk --update --no-cache add jansson yaml libxml2 && \
  # add build dependencies
  apk --update --no-cache add --virtual build-deps \
    git autoconf make gcc automake musl-dev \
    jansson-dev yaml-dev libxml2-dev && \
  # build, install universal-ctags
  git clone http://github.com/universal-ctags/ctags.git ~/ctags && \
  cd ~/ctags && \
  ./autogen.sh && \
  ./configure --program-prefix=u && \
  make && make install && \
  # cleanup
  cd ~ && rm -rf ctags && \
  apk del build-deps

WORKDIR /workspace
ENTRYPOINT ["uctags"]
