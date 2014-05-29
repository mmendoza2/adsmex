class AdddColumntoCursos < ActiveRecord::Migration
  def change
    create_table "2013", force: true do |t|
      t.integer "user_id"
      t.integer "curso_id"
    end
    create_table "2014", force: true do |t|
      t.integer "user_id"
      t.integer "curso_id"
    end
    create_table "2015", force: true do |t|
      t.integer "user_id"
      t.integer "curso_id"
    end
    create_table "2016", force: true do |t|
      t.integer "user_id"
      t.integer "curso_id"
    end
    create_table "2017", force: true do |t|
      t.integer "user_id"
      t.integer "curso_id"
    end
    create_table "2018", force: true do |t|
      t.integer "user_id"
      t.integer "curso_id"
    end
  end
end
