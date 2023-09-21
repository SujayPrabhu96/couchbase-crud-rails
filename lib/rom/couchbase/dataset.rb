module ROM
  module Couchbase
    class Dataset < ROM::Gateway
      attr_reader :name, :connection

      def initialize(name)
        @name = name.to_s
        @connection = connection
      end

      def collection
        connection.collection(name)
      end
    end
  end
end
