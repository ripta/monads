module Monads

  class Option < BasicObject

    class <<self

      undef_method :new

      def call(value)
        # false is _not_ None, but Some[false]
        value.nil? ? None.() : Some.(value)
      end

    end

  end

end
