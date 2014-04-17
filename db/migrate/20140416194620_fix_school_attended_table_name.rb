class FixSchoolAttendedTableName < ActiveRecord::Migration
  def change
  	drop_table :schools

  	create_table :school_attendeds do |t|
		  t.string  :description
  		t.string  :date_started
 		 	t.string  :date_graduated
 		 	t.string  :date_dropped_out
  		t.boolean :great_school,  default: true
  		t.string  :name
  	end
  end
end
