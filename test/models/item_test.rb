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
require "test_helper"

class ItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
