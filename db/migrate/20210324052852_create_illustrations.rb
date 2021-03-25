class CreateIllustrations < ActiveRecord::Migration[6.0]
  def change
    create_table :illustrations do |t|
      t.string :author
      t.string :account
      t.references :tag
      t.references :review
      t.timestamps
    end
  end
end
