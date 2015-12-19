require_relative '../config'

class CreatePolitician < ActiveRecord::Migration

	def change
		create_table :politicians do |t|
			t.string :title, length: 64
			t.string :firstname, length: 64
			t.string :middlename
			t.string :lastname
			t.string :name_suffix
			t.string :nickname
			t.string :party
			t.string :state
			t.string :district
			t.boolean :in_office
			t.string :gender
			t.string :phone
			t.integer :fax
			t.text :website
			t.text :webform
			t.text :congress_office
			t.string :bioguide_id
			t.integer :votesmart_id
			t.string :fec_id
			t.integer :govtrack_id
			t.string :crp_id
			t.string :twitter_id
			t.text :congresspedia_url
			t.string :youtube_url
			t.string :facebook_id
			t.string :official_rss
			t.string :senate_class
			t.date :birthdate
			t.timestamps null:false
		end
	end
end