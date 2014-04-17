class CreateLifeEvents < ActiveRecord::Migration
  def change
  	create_table :life_events do |t| 
  		t.string 	:description
  		t.string 	:date_happened
  		t.boolean :life_is_good, default: true
  		t.string 	:person_most_affected
  		t.timestamp
  	end

  end
end
