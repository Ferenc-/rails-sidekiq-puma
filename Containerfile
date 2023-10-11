FROM ruby:3.2.2

WORKDIR /app
COPY . .
RUN gem install foreman && \
    bundle install

ENV INSTANA_DEBUG='true'
ENV INSTANA_SERVICE_NAME='rails-sidekiq-puma'
ENV INSTANA_ACTIVATE_SET='action_controller_api,action_controller_base,action_view,active_job,active_record,rack,rails,redis,sidekiq_client,sidekiq_worker'
ENTRYPOINT ["foreman", "start", "-f", "Procfile.dev"]
