# Set up Mongo
if ENV['MONGOHQ_URL']
  # Assuming that this is HEROKU
  MongoMapper.config = {ENV["RACK_ENV"] => {'uri' => ENV['MONGOHQ_URL']}}
  MongoMapper.database = 'sample_app'
  MongoMapper.connect(ENV["RACK_ENV"])
else
  FileUtils.mkdir_p('log') unless File.exist?('log')
  logger = Logger.new("log/sample_app.log")
  
  MongoMapper.connection = Mongo::Connection.new('localhost', 27017, :logger => logger)
  MongoMapper.database = 'sample_app'
  
  MongoMapper.connection.connect
end