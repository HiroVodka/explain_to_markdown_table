FROM ruby:3.1
RUN apt-get update -qq && apt-get install -y locales
RUN sed -i 's/#.*ja_JP\.UTF/ja_JP\.UTF/' /etc/locale.gen
RUN locale-gen && update-locale LANG=ja_JP.UTF-8
RUN mkdir /explain_to_markdown_table
WORKDIR /explain_to_markdown_table
COPY . /explain_to_markdown_table

