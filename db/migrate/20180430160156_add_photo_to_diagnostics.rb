class AddPhotoToDiagnostics < ActiveRecord::Migration[5.1]
  def change
    add_column :diagnostics, :photo, :string
  end
end
