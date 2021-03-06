# frozen_string_literal: true

module ServiceActor
  # Error raised when using `fail!` inside an actor.
  class Failure < Error
    def initialize(result)
      @result = result

      error = result.respond_to?(:error) ? result.error : nil

      super(error)
    end

    attr_reader :result
  end
end
