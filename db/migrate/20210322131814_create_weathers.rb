class CreateWeathers < ActiveRecord::Migration[6.1]
  def change
    create_table :weathers do |t|
      t.float :temp
      t.float :temp_min
      t.float :temp_max
      t.string :description
      t.references :location

      t.timestamps
    end
  end
end
