# encoding: utf-8
#
#
# == \General Information
#
# Author::    Oleg Bobok  (mailto:bobizma@gmail.com)
# License::   Distributes under the same terms as Ruby
#
# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#  type                   :string(255)
#

class User::Admin < User
  has_many :news, as: :author

  validates :first_name, presence: true, length: { minimum: 3, maximum: 60 }
  validates :last_name, presence: true, length: { minimum: 3, maximum: 60 }
  validates :middle_name, length: { minimum: 3, maximum: 60, allow_blank: true }
end
