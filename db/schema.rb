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

ActiveRecord::Schema.define(version: 20171208155154) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "property_web_scraper_import_hosts", force: :cascade do |t|
    t.integer  "flags",               default: 0,           null: false
    t.string   "scraper_name"
    t.string   "host"
    t.boolean  "is_https"
    t.json     "details",             default: {}
    t.string   "slug"
    t.text     "example_urls",        default: [],                       array: true
    t.text     "invalid_urls",        default: [],                       array: true
    t.datetime "last_retrieval_at"
    t.string   "valid_url_regex"
    t.string   "pause_between_calls", default: "5.seconds"
    t.string   "stale_age",           default: "1.day"
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.index ["host"], name: "index_property_web_scraper_import_hosts_on_host", unique: true, using: :btree
  end

  create_table "property_web_scraper_listings", force: :cascade do |t|
    t.integer  "flags",                                         default: 0,     null: false
    t.integer  "area_unit",                                     default: 0,     null: false
    t.string   "reference"
    t.integer  "year_construction",                             default: 0
    t.integer  "count_bedrooms",                                default: 0
    t.float    "count_bathrooms",                               default: 0.0
    t.integer  "count_toilets",                                 default: 0
    t.integer  "count_garages",                                 default: 0
    t.float    "plot_area",                                     default: 0.0
    t.float    "constructed_area",                              default: 0.0
    t.integer  "energy_rating"
    t.float    "energy_performance"
    t.string   "title"
    t.text     "description"
    t.string   "locale_code"
    t.string   "title_es"
    t.text     "description_es"
    t.string   "title_de"
    t.text     "description_de"
    t.string   "title_fr"
    t.text     "description_fr"
    t.string   "title_it"
    t.text     "description_it"
    t.boolean  "furnished",                                     default: false
    t.boolean  "sold",                                          default: false
    t.boolean  "reserved",                                      default: false
    t.boolean  "for_rent_short_term",                           default: false
    t.boolean  "for_rent_long_term",                            default: false
    t.boolean  "for_sale",                                      default: false
    t.boolean  "for_rent",                                      default: false
    t.datetime "deleted_at"
    t.datetime "active_from"
    t.datetime "available_to_rent_from"
    t.datetime "available_to_rent_till"
    t.string   "price_string"
    t.float    "price_float"
    t.integer  "price_sale_cents",                              default: 0,     null: false
    t.string   "price_sale_currency",                           default: "USD", null: false
    t.integer  "price_rental_cents",                            default: 0,     null: false
    t.string   "price_rental_currency",                         default: "USD", null: false
    t.integer  "price_sale_current_cents",                      default: 0,     null: false
    t.string   "price_sale_current_currency",                   default: "USD", null: false
    t.integer  "price_sale_original_cents",                     default: 0,     null: false
    t.string   "price_sale_original_currency",                  default: "USD", null: false
    t.integer  "price_rental_monthly_current_cents",            default: 0,     null: false
    t.string   "price_rental_monthly_current_currency",         default: "USD", null: false
    t.integer  "price_rental_monthly_original_cents",           default: 0,     null: false
    t.string   "price_rental_monthly_original_currency",        default: "USD", null: false
    t.integer  "price_rental_monthly_low_season_cents",         default: 0,     null: false
    t.string   "price_rental_monthly_low_season_currency",      default: "USD", null: false
    t.integer  "price_rental_monthly_high_season_cents",        default: 0,     null: false
    t.string   "price_rental_monthly_high_season_currency",     default: "USD", null: false
    t.integer  "price_rental_monthly_standard_season_cents",    default: 0,     null: false
    t.string   "price_rental_monthly_standard_season_currency", default: "USD", null: false
    t.integer  "commission_cents",                              default: 0,     null: false
    t.string   "commission_currency",                           default: "USD", null: false
    t.integer  "service_charge_yearly_cents",                   default: 0,     null: false
    t.string   "service_charge_yearly_currency",                default: "USD", null: false
    t.integer  "price_rental_monthly_for_search_cents",         default: 0,     null: false
    t.string   "price_rental_monthly_for_search_currency",      default: "USD", null: false
    t.string   "currency"
    t.string   "address_string"
    t.string   "street_number"
    t.string   "street_name"
    t.string   "street_address"
    t.string   "postal_code"
    t.string   "province"
    t.string   "city"
    t.string   "region"
    t.string   "country"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "last_retrieved_at"
    t.string   "import_host_slug"
    t.integer  "re_agent_id"
    t.string   "import_url"
    t.json     "import_history",                                default: {}
    t.string   "main_image_url"
    t.text     "image_urls",                                    default: [],                 array: true
    t.text     "related_urls",                                  default: [],                 array: true
    t.text     "features",                                      default: [],                 array: true
    t.text     "unknown_fields",                                default: [],                 array: true
    t.datetime "created_at",                                                    null: false
    t.datetime "updated_at",                                                    null: false
    t.index ["flags"], name: "index_property_web_scraper_listings_on_flags", using: :btree
    t.index ["import_url"], name: "index_property_web_scraper_listings_on_import_url", using: :btree
    t.index ["price_float"], name: "index_property_web_scraper_listings_on_price_float", using: :btree
    t.index ["reference"], name: "index_property_web_scraper_listings_on_reference", using: :btree
  end

end
