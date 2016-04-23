class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :title
      t.string :cat_id
      t.string :cohort_id
      t.string :url

      t.timestamps null: false
    end
  end
end
