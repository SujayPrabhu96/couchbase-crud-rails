require 'rom'
require_relative '../../lib/rom/couchbase'
require_relative '../../app/relations/tasks'

config = ROM::Configuration.new(:couchbase, 'couchbase://localhost', username: 'Sujay', password: 'sujaysp', bucket: 'todo', scope: 'todo-scope')
config.register_relation(Tasks)
ROM_CONTAINER = ROM.container(config)
