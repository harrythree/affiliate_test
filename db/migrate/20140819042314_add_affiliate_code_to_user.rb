class AddAffiliateCodeToUser < ActiveRecord::Migration
  def change
    add_column :users, :affiliate_code, :string
  end
end
