begin
  require 'thread_safe'
rescue LoadError
  raise LoadError, 'Please install the `thread_safe` gem.'
end

require 'rom/memory/dataset'

module ROM
  module Memory
    # In-memory thread-safe data storage
    #
    # @private
    class Storage
      # Dataset registry
      #
      # @return [ThreadSafe::Hash]
      #
      # @api private
      attr_reader :data

      # @api private
      def initialize
        @data = ThreadSafe::Hash.new
      end

      # @return [Dataset]
      #
      # @api private
      def [](name)
        data[name]
      end

      # Register a new dataset
      #
      # @return [Dataset]
      #
      # @api private
      def create_dataset(name)
        data[name] = Dataset.new(ThreadSafe::Array.new)
      end

      # Check if there's dataset under specified key
      #
      # @return [Boolean]
      #
      # @api private
      def key?(name)
        data.key?(name)
      end

      # Return registered datasets count
      #
      # @return [Integer]
      #
      # @api private
      def size
        data.size
      end
    end
  end
end
