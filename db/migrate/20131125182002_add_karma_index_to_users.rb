class AddKarmaIndexToUsers < ActiveRecord::Migration
  def change
    add_index :users, :karma_score
  end
end
