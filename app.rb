require 'sinatra'
require 'sinatra/activerecord'

set :database, "sqlite3:///life_and_school_app.db"

###Go Home Index
get "/" do 
	@life_events = LifeEvent.all
	@schools = SchoolAttended.all
	erb :"/index"
end

get "/schools" do
	@schools = SchoolAttended.all
	erb :"/schools/index"
end

get "/events" do 
	@life_events = LifeEvent.all
	erb :"/events/index"
end


###Go error
get "/error" do 
	erb :"/error"
end
####get paramaters from schools/new and push new school
post "/new_school" do
	new_school = SchoolAttended.new(params[:school_attendeds])
	new_school.save
	redirect "/"
end
### get parameters from events/new and push new life event
post "/new_event" do
	new_life_event = LifeEvent.new(params[:life_events])
	new_life_event.save
	redirect "/"
end


###go to form page for entering new school
get "/schools/new" do
	erb :"/schools/new"
end
###go to form page for entering new life events
get "/events/new" do
	erb :"/events/new"
end

get "/events/:id/edit" do
	@editted_event = LifeEvent.find(params[:id])
	erb :"/events/edit"
end

put "events/:id/edit" do
	updated_life_event = LifeEvent.find(params[:id])
	updated_life_event.update_attributes(params[:life_events])
	redirect "/"
end

####edit school and then update the school record
get "/schools/:id/edit" do
	@editted_school = SchoolAttended.find(params[:id])
	erb :"/schools/edit"
end

put "/schools/:id/edit" do
	updated_school_event = SchoolAttended.find(params[:id])
	updated_school_event.update_attributes(params[:school_attended])
	redirect "/"
end

get "/events/:id" do
	@life_event = LifeEvent.find(params[:id])
	erb :"/events/show"
end

get "/schools/:id" do
	@school = SchoolAttended.find(params[:id])
	erb :"/schools/show"
end

get "/schools/:id/delete" do
	school_to_delete = SchoolAttended.find(params[:id])
	school_to_delete.delete
	redirect "/"
end

get "/events/:id/delete" do
	event_to_delete = LifeEvent.find(params[:id])
	event_to_delete.delete
	redirect "/"
end


class LifeEvent < ActiveRecord::Base
end

class SchoolAttended < ActiveRecord::Base
end

