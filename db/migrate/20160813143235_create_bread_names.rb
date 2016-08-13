class CreateBreadNames < ActiveRecord::Migration[5.0]
  def change
    create_table :bread_names do |t|
      t.string :city_name
      t.string :bread_name

      t.timestamps
    end
  end
end
