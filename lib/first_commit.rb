# frozen_string_literal: true

require_relative "first_commit/version"
require 'zeitwerk'

loader = Zeitwerk::Loader.for_gem
loader.setup

module FirstCommit
end

loader.eager_load
