class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :phone
      t.string :name
      t.string :email
      t.string :password
      t.string :time
      t.integer :key

      t.timestamps
    end
  end
end
