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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110216021106) do

  create_table "ninos", :id => false, :force => true do |t|
    t.string   "codigo",                          :null => false
    t.string   "estado_padrinazgo", :limit => 30
    t.date     "fecha_nac"
    t.string   "sexo",              :limit => 1
    t.string   "pnombre",           :limit => 25
    t.string   "snombre",           :limit => 25
    t.string   "papellido",         :limit => 25
    t.string   "sapellido",         :limit => 25
    t.string   "habita_con",        :limit => 25
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
