class CreatePost1s < ActiveRecord::Migration[7.0]
  def change
    create_table :post1s do |t|
      t.string :name2
      t.string :stream2

      t.timestamps
    end
  end
end
