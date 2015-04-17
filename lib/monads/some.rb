module Monads

  class Some < BasicObject

    class <<self
      def call(value)
        new(value)
      end

      private :new
    end

    attr_reader :value

    def initialize(value)
      @value = value
    end

    def inspect
      "Some(#{value.inspect})"
    end

    def instance_of?(klass)
      klass === self
    end

    # val f: 'a -> 'b
    # val map: 'a option -> 'b option
    def map(&f)
      Option.(f.(value))
    end

  end

end
