ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

require "paperclip/matchers"

# Uploaded files should go into ./tmp/ 
Paperclip::Attachment.default_options[:path] = ":rails_root/tmp/test_uploads/:class/:attachment/:id_partition/:filename"

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  fixtures :all

  # Add more helper methods to be used by all tests here...
  extend Paperclip::Shoulda::Matchers
end
