require 'couchbase'

module ROM
  module Couchbase
    class Gateway < ROM::Gateway
      attr_reader :connection

      def initialize(uri, options = {})
        @connection = connect(uri, options)
      end

      def dataset(name)
        connection.collection(name.to_s)
      end

      private
      def connect(uri, options)
        db_connection = ::Couchbase::Cluster.connect(uri, options[:username], options[:password])
        bucket = db_connection.bucket(options[:bucket])
        bucket.scope(options[:scope])
      end
    end
  end
end