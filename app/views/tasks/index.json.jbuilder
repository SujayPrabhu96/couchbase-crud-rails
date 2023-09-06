json.data do
  json.array! tasks do |task|
    json.id task.id
    json.task { json.patial! 'task', task: task }
  end
end