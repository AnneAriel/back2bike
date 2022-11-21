class CreateBikes < ActiveRecord::Migration[7.0]
  def change
    create_table :bikes do |t|
      t.string :description
      t.string :localisation
      t.integer :daily_price
      t.string :type
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
