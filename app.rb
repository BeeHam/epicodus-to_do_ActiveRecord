require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/task")
require('pg')

DB = PG.connect({:dbname => "to_do"})

get("/") do
  erb(:index)
end

get("lists/new") do
  erb(:list_form)
end

# post("/tasks") do
#   description = params.fetch("description")
#   task = Task.new({:description => description, :list_id => 1})
#   task.save()
#   erb(:success)
# end
