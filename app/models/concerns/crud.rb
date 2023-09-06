module Crud
  extend ActiveSupport::Concern

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