module Monads

  class None < BasicObject

    class <<self
      def call
        new
      end

      private :new
    end

    def inspect
      "None()"
    end

    def instance_of?(klass)
      klass === self
    end

    def map(&f)
      f.()
      None.()
    end

  end

end
