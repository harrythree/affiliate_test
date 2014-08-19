class AddReferraleCodeToUser < ActiveRecord::Migration
  def change
    add_column :users, :referrale_code, :string
  end
end
