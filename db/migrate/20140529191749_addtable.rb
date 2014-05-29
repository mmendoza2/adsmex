class Addtable < ActiveRecord::Migration
  def change
    create_table "cursosusuario", force: true do |t|
      t.integer "user_id"
      t.integer "curso_id"
    end
  end
end
