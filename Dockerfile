FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.2

RUN gem install googletranslate --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["rtranslate"]
CMD ["--help"]
