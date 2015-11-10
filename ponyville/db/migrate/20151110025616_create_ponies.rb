class CreatePonies < ActiveRecord::Migration
  def change
    create_table :ponies do |t|
      t.string :name
      t.string :cutie_mark
      t.string :kind
      t.string :address
      t.string :occupation
      t.string :picture

      t.timestamps null: false
    end
  end
end
