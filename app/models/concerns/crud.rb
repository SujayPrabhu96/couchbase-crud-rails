module Crud
  extend ActiveSupport::Concern

  def all
    res = COUCHBASE_CLUSTER.query("SELECT * FROM `todo`.`todo-scope`.`tasks`")
    res.rows.to_a
  end

  def find(id)
    @collection.get(id)
  end

  def create(content)
    @collection.insert("task_#{SecureRandom.uuid}", content)
  end

  def update(id, data)
    @collection.upsert(id, data)
  end

  def delete(id)
    @collection.remove(id)
  end
end