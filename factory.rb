class Factory

  def self.new(*args, &block)

    Class.new do
      args.each do |a|
        attr_accessor a
      end

      define_method :initialize do |*vars|
        raise "You need #{args.size} arguments instead of #{vars.size}" if args.size != vars.size
        vars.each_with_index do |value, index|
          instance_variable_set("@#{args[index]}", value)
        end
      end

      def [](variable)
        variable = instance_variables[variable][1..-1] if variable.is_a? Numeric
        instance_variable_get("@#{variable}")
      end

      def []=(variable, value)
        send("#{variable}=", value)
      end

      self.class_eval(&block) if block_given?

    end

  end

end
