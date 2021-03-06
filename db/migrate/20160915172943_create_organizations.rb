class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.text   :description
      t.text   :video
      t.string :company_size
      t.string :street
      t.string :city
      t.string :state
      t.string :website
      t.string :phone
      t.string :email
      t.references :county, index: true

      t.timestamps null: false
    end
  end
end
