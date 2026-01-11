class CreateApples < ActiveRecord::Migration[8.1]
  def change
    create_table :apples do |t|
      t.string :name

      t.timestamps
    end
  end
end
