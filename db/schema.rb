# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140811140426) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"



  create_table "archivos", force: true do |t|
    t.string   "name"
    t.integer  "size"
    t.text     "descripcion"
    t.string   "slug"
    t.string   "archivo_file_name"
    t.string   "archivo_content_type"
    t.integer  "archivo_file_size"
    t.datetime "archivo_updated_at"
    t.integer  "curso_id"
    t.integer  "user_id"
  end

  add_index "archivos", ["slug"], name: "index_archivos_on_slug", using: :btree

  create_table "authorizations", force: true do |t|
    t.string   "provider"
    t.string   "uid"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "calificacion", force: true do |t|
    t.integer "baja"
    t.integer "media"
    t.integer "alta"
    t.integer "user_id"
    t.integer "curso_id"
  end


  create_table "cursos", force: true do |t|
    t.string   "name"
    t.string   "slug"
    t.string   "nivel"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "categoria"
    t.boolean  "nivel1"
    t.boolean  "nivel2"
    t.boolean  "nivel3"
  end


  create_table "cursosusuario", force: true do |t|
    t.integer "user_id"
    t.integer "curso_id"
    t.boolean "a2013"
    t.boolean "a2014"
    t.boolean "a2015"
    t.boolean "a2016"
    t.boolean "a2017"
    t.boolean "a2018"
    t.integer "nivel2013"
    t.integer "niveln2013"
    t.integer "nivel2014"
    t.integer "niveln2014"
    t.integer "nivel2015"
    t.integer "niveln2015"
    t.integer "nivel2016"
    t.integer "niveln2016"
    t.integer "nivel2017"
    t.integer "niveln2017"
    t.integer "nivel2018"
    t.integer "niveln2018"
  end

  create_table "imagenes", force: true do |t|
    t.string   "slug"
    t.string   "name"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.integer  "user_id"
    t.integer  "micrositio_id"
    t.integer  "evento_id"
    t.integer  "actividad_id"
  end

  add_index "imagenes", ["slug"], name: "index_imagenes_on_slug", using: :btree


  create_table "mensajes", force: true do |t|
    t.integer  "sender"
    t.integer  "receiver"
    t.integer  "long"
    t.integer  "lat"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.string   "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "slug"
    t.text     "mapa"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "metodologias", force: true do |t|
    t.string   "name"
    t.text     "descripcion"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "video"
  end

  add_index "metodologias", ["slug"], name: "index_metodologias_on_slug", using: :btree

  create_table "microposts", force: true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "coordenadas"
    t.integer  "receiver_id"
  end

  add_index "microposts", ["user_id", "created_at"], name: "index_microposts_on_user_id_and_created_at", using: :btree



  create_table "productos", force: true do |t|
    t.string   "name"
    t.text     "descripcion"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "subproducto_id"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "video"
  end

  add_index "productos", ["slug"], name: "index_productos_on_slug", using: :btree

  create_table "relacionarchivos", force: true do |t|
    t.integer "user_id"
    t.integer "curso_id"
    t.integer "archivo_id"
  end



  create_table "relationships", force: true do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "relationships", ["followed_id"], name: "index_relationships_on_followed_id", using: :btree
  add_index "relationships", ["follower_id", "followed_id"], name: "index_relationships_on_follower_id_and_followed_id", unique: true, using: :btree
  add_index "relationships", ["follower_id"], name: "index_relationships_on_follower_id", using: :btree



  create_table "subproductos", force: true do |t|
    t.string   "name"
    t.text     "descripcion"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "producto_id"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "video"
  end

  add_index "subproductos", ["slug"], name: "index_subproductos_on_slug", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin"
    t.string   "slug"
    t.string   "username"
    t.string   "password"
    t.string   "usertype"
    t.integer  "block"
    t.integer  "sendEmail"
    t.integer  "gid"
    t.datetime "registerDate"
    t.datetime "lastvisitDate"
    t.string   "activation"
    t.text     "params"
    t.string   "fb_author"
    t.text     "ntlparam"
    t.string   "uid"
    t.string   "provider"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.string   "avatar"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.text     "lat"
    t.text     "lng"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["slug"], name: "index_users_on_slug", using: :btree

end
