class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.references :game, foreign_key: true
      t.references :character, foreign_key: true

      t.timestamps
    end
  end
end
