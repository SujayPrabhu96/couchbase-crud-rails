require_relative '../../config/initializers/rom'

namespace :couchbase do
  desc 'Fetch record from Couchbase'
  task :fetch_record do
    rom = ROM_CONTAINER.relations[:tasks].dataset.get('todo_1').content
  end

  desc 'Insert record into Couchbase'
  task :insert_record do
    ROM_CONTAINER.relations[:tasks].dataset.insert('todo_2', { 'name' => 'Couchbase ORM', completed: false })
  end

  desc 'Update record in Couchbase'
  task :update_record do
    ROM_CONTAINER.relations[:tasks].dataset.upsert('todo_2', { 'name' => 'Couchbase ORM', completed: true })
  end

  desc 'Delete record from Couchbase'
  task :delete_record do
    ROM_CONTAINER.relations[:tasks].dataset.remove('todo_2')
  end
end
