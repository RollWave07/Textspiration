class CreateChannels < ActiveRecord::Migration
  def change
    create_table :channels do |t|
      t.references :user, index: true
      t.references :type, index: true
      t.timestamps
    end
  end
end
