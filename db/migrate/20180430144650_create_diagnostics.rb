class CreateDiagnostics < ActiveRecord::Migration[5.1]
  def change
    create_table :diagnostics do |t|
      t.belongs_to :user, foreign_key: true, index: true
      t.string :tags
      t.text :description

      t.timestamps
    end
  end
end
