class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :title
      t.string :slug
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
    add_index :questions, :slug, unique: true
  end
end
