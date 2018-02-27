# == Schema Information
#
# Table name: users
#
#  id          :integer          not null, primary key
#  provider    :string
#  uid         :string
#  nickname    :string
#  name        :string
#  email       :string
#  location    :string
#  image_url   :string
#  description :text
#  token       :string
#  secret      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
