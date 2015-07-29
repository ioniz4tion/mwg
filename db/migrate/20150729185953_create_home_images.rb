class CreateHomeImages < ActiveRecord::Migration
  def change
    create_table :home_images do |t|
      t.string :alt

      t.timestamps null: false
    end
  end
end
