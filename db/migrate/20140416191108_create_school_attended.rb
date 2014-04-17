class CreateSchoolAttended < ActiveRecord::Migration
  def change
  	  	create_table :schools do |t|
		  		t.string	:school
		  		t.string	:description
		  		t.string	:date_started
		  		t.string 	:date_graduated
		  		t.string	:date_dropped_out
		  		t.boolean :great_school, default: true
		  		t.timestamp
			  end

  end
end
