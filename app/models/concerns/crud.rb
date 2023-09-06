module Crud
  extend ActiveSupport::Concern

  def find(id)
    @collection.get(id)
  end

  def create(content)
    @collection.upsert("task_#{SecureRandom.uuid}", content)
  end

  def update(id, data)
    existing_data = find(id)
    updated_data = existing_data.merge(data)
    @collection.replace(id, updated_data)
  end

  def delete(id)
    @collection.remove(id)
  end
end