FROM ruby:3.2.2

WORKDIR /app
COPY . .
RUN gem install foreman && \
    bundle install

ENTRYPOINT ["foreman", "start", "-f", "Procfile.dev"]
