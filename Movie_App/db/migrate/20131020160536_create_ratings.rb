class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.string :rater
      t.integer :rating
      t.references :movie, index: true

      t.timestamps
    end
  end
end
