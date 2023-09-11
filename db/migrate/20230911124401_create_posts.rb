class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :name2
      t.string :stream2

      t.timestamps
    end
  end
end
