class CreateProportions < ActiveRecord::Migration[6.0]
  def change
    create_table :proportions do |t|
      t.string :amount
      t.references :drink, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
