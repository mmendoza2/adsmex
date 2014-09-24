class AdddColumntoCursos < ActiveRecord::Migration
  def change
    create_table "cursos2013", force: true do |t|
      t.integer "user_id"
      t.integer "curso_id"
    end
    create_table "cursos2014", force: true do |t|
      t.integer "user_id"
      t.integer "curso_id"
    end
    create_table "cursos2015", force: true do |t|
      t.integer "user_id"
      t.integer "curso_id"
    end
    create_table "cursos2016", force: true do |t|
      t.integer "user_id"
      t.integer "curso_id"
    end
    create_table "cursos2017", force: true do |t|
      t.integer "user_id"
      t.integer "curso_id"
    end
    create_table "cursos2018", force: true do |t|
      t.integer "user_id"
      t.integer "curso_id"
    end
  end
end
