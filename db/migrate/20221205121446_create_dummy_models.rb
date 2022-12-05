class CreateDummyModels < ActiveRecord::Migration[7.0]
  def change
    create_table :dummy_models do |t|
      t.string :name
      t.integer :age

      t.timestamps
    end
  end
end
