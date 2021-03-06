class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :name
      t.string :picture
      t.string :credit
      t.text	 :description
      t.references :organization, index: true
      t.references :award, index: true

      t.timestamps null: false
    end
  end
end
