class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.float  :time
      t.integer :key

      t.timestamps
    end
  end
end
