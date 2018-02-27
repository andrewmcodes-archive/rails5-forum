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

class User < ApplicationRecord
  has_many :discussions

  def self.create_or_update_from(auth_info)
    user = where(uid: auth_info[:uid], provider: auth_info[:provider]).first_or_create
    user.update(
      nickname: auth_info[:info][:nickname],
      name: auth_info[:info][:name],
      email: auth_info[:info][:email],
      location: auth_info[:info][:location],
      image_url: auth_info[:info][:image],
      description: auth_info[:info][:description],
      token: auth_info[:credentials][:token],
      secret: auth_info[:credentials][:secret]
    )
    user
  end

  def owns_discussion?(discussion)
    # Not using the below technique because of
    # how many db quires will be generated
    # discussions.include?(discussion)
    # instead....
    id == discussion.user_id
  end
end
