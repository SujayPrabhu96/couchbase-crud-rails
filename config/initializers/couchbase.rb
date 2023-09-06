require 'couchbase'

# Connect to the Couchbase cluster
COUCHBASE_CLUSTER = Couchbase::Cluster.connect('couchbase://127.0.0.1', 'Sujay', 'sujaysp')

# Open the bucket you want to work with
bucket = COUCHBASE_CLUSTER.bucket('todo') # Replace 'your_bucket_name' with your actual bucket name

# Make the bucket accessible throughout your application
COUCHBASE_BUCKET = bucket.scope("todo-scope")
