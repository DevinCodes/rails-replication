class CreatePaths < ActiveRecord::Migration[6.1]
  def change
    create_table :paths do |t|
      t.string :title
      t.text :description
      t.numeric :archive_number

      t.timestamps
    end
  end
end
