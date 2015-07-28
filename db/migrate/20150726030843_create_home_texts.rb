class CreateHomeTexts < ActiveRecord::Migration
  def change
    create_table :home_texts do |t|

      t.timestamps null: false
      t.string :text
    end
  end
end
