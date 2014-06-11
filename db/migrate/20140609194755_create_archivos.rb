class CreateArchivos < ActiveRecord::Migration
  def change
    add_column :archivos, :slug, :string
  end


end
