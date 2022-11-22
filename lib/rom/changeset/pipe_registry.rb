# frozen_string_literal: true

module ROM
  class Changeset
    # Dry::Transformer Registry useful for pipe
    #
    # @api private
    module PipeRegistry
      extend Dry::Transformer::Registry

      import Dry::Transformer::Coercions
      import Dry::Transformer::HashTransformations

      def self.add_timestamps(data)
        now = Time.now
        Hash(created_at: now, updated_at: now).merge(data)
      end

      def self.touch(data)
        Hash(updated_at: Time.now).merge(data)
      end
    end
  end
end
