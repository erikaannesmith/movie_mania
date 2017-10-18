require 'csv'

CSV.foreach("./data/movies.csv", headers: true) do |row|
  director = Director.find_or_create_by(name: row[4])
  movie = Movie.create(
                title: row[1],
                description: row[3],
                director: director)
                puts "Created #{movie.title}"
end
