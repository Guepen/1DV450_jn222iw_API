class FixDatabase < ActiveRecord::Migration
  def change
    create_table :api_keys do |t|
      t.string :apikey
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
