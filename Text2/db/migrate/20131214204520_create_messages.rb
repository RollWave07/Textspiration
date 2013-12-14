class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :quote
      t.references :type, index: true
      t.timestamps
    end
  end
end
