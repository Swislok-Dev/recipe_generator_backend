class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.references :recipe, null: false, foreign_key: true
      t.integer :rating
      t.string :content

      t.timestamps
    end
  end
end
