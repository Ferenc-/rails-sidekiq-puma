# This file is used by Rack-based servers to start the application.

require_relative "config/environment"

require "instana/rack"
use ::Instana::Rack

run Rails.application
Rails.application.load_server
