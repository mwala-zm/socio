# == Schema Information
#
# Table name: items
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  image_url   :string
#  user_id     :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Item < ApplicationRecord
  belongs_to :user
end
