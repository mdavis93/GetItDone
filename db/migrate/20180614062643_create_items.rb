class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.date :expires_at, null: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
