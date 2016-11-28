require 'data_mapper'
require 'dm-postgres-adapter'
require 'dm-migrations'
require 'dm-core'

require_relative 'models/key'

DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/database_server_#{ENV['RACK_ENV']}")
DataMapper.finalize
DataMapper.auto_migrate!
