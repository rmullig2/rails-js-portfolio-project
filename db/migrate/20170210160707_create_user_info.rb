class CreateUserInfo < ActiveRecord::Migration[5.0]
  def change
    create_table :user_infos do |t|
      t.string :name
      t.string :city
      t.string :state
      t.integer :user_id
    end
  end
end
