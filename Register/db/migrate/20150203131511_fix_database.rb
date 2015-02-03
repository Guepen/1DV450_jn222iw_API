class FixDatabase < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.timestamps
    end

    create_table :api_keys do |t|
      t.string :value
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
