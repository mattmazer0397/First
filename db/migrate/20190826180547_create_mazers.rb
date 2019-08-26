class CreateMazers < ActiveRecord::Migration[5.2]
  def change
    create_table :mazers do |t|
      t.string :Name
      t.integer :age

      t.timestamps
    end
  end
end
