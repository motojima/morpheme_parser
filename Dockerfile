FROM ruby:2.6.10-slim-bullseye
RUN apt-get update \
    && apt-get install -y locales build-essential wget cmake \
    && locale-gen ja_JP.UTF-8

RUN wget https://github.com/ku-nlp/jumanpp/releases/download/v2.0.0-rc4/jumanpp-2.0.0-rc4.tar.xz
RUN tar xvf jumanpp-2.0.0-rc4.tar.xz
RUN cd jumanpp-2.0.0-rc4 \
    && mkdir build \
    && cd build \
    && cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr/local \
    && make \
    && make install

RUN echo すももももももももももも | jumanpp

ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL=ja_JP.UTF-8
RUN localedef -f UTF-8 -i ja_JP ja_JP.utf8

RUN mkdir /morphome_parser
WORKDIR /morphome_parser

RUN gem install jumanpp_ruby
COPY . /morphome_parser
