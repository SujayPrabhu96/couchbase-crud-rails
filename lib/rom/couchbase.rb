require 'rom'

require 'rom/couchbase/gateway'
require 'rom/couchbase/dataset'
require 'rom/couchbase/relation'

module ROM
  module Couchbase
  end
end

ROM.register_adapter(:couchbase, ROM::Couchbase)
