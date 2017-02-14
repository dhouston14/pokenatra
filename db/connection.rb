ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :database => "pokemon_db"
)

if defined? sinatra
  after do
    AtiveRecord::BASE.connection.close
  end
end
