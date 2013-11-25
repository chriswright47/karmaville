class AddKarmaScoreToUsers < ActiveRecord::Migration
  def change
    add_column :users, :karma_score, :integer
  end
end
