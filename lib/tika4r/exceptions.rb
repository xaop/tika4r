module Tika4R
  class Exception < StandardError
    attr_reader :original_exception

    def initialize(original_exception)
      @original_exception = original_exception
    end
  end
end
