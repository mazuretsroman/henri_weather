# frozen_string_literal: true

class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.string :description
      t.string :country_code
      t.string :zip_code

      t.timestamps
    end
  end
end
