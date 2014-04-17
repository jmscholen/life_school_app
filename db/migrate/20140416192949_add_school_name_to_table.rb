class AddSchoolNameToTable < ActiveRecord::Migration
  def change
  	remove_column	:schools, :school
  	add_column :schools, :name, :string
  end
end
