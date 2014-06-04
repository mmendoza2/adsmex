class Createcursosrelation < ActiveRecord::Migration
  def change
    create_table "cursosusuario", force: true do |t|
      t.integer "user_id"
      t.integer "curso_id"
      t.boolean "a2013"
      t.boolean "a2014"
      t.boolean "a2015"
      t.boolean "a2016"
      t.boolean "a2017"
      t.boolean "a2018"
      t.boolean "nivel12014"
      t.boolean "nivel22014"
      t.boolean "nivel32014"
      t.boolean "nivel12015"
      t.boolean "nivel22015"
      t.boolean "nivel32015"
      t.boolean "nivel12016"
      t.boolean "nivel22016"
      t.boolean "nivel32016"
      t.boolean "nivel12017"
      t.boolean "nivel22017"
      t.boolean "nivel32017"
      t.boolean "nivel12018"
      t.boolean "nivel22018"
      t.boolean "nivel32018"
    end

    add_column :cursos, :nivel1, :boolean
    add_column :cursos, :nivel2, :boolean
    add_column :cursos, :nivel3, :boolean
  end
end
