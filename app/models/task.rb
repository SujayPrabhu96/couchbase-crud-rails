class Task
  include Crud

  def initialize
    @collection = COUCHBASE_BUCKET.collection("tasks")
  end
end