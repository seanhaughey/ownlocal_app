require 'csv'

desc "Import businesses from csv file"
task :import => [:environment] do

	file = "db/project_businesses.csv"

	CSV.foreach(file, :headers => true) do |row|
		Business.create!(row.to_hash)
	end
end