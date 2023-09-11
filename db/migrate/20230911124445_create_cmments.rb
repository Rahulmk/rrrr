class CreateCmments < ActiveRecord::Migration[7.0]
  def change
    create_table :cmments do |t|
      t.string :name3
      t.string :stream3

      t.timestamps
    end
  end
end
