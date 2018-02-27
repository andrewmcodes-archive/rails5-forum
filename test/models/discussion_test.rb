# == Schema Information
#
# Table name: discussions
#
#  id         :integer          not null, primary key
#  headline   :string
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class DiscussionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
