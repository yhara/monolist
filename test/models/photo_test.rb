require 'test_helper'

class PhotoTest < ActiveSupport::TestCase
  should have_attached_file(:body)
  should validate_attachment_presence(:body)
  should validate_attachment_content_type(:body).
    allowing('image/png', 'image/gif').
    rejecting('text/plain', 'text/xml')
  #should validate_attachment_size(:avatar).
  #  less_than(2.megabytes)
end
