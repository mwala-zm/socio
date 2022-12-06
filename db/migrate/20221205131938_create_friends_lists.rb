class CreateFriendsLists < ActiveRecord::Migration[7.0]
  def change
    create_table :friends_lists do |t|

      t.timestamps
    end
  end
end
