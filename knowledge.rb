#class Module
class Object
  def attribute(attr, value = nil)

    instance_variable_set("@#{attr}", value)

    define_method "#{attr}=" do | value |
      instance_variable_set("@#{attr}", value)
    end

    define_method "#{attr}?" do
      if instance_variable_defined? "@#{attr}"
          true
      else
        false
      end
    end

    define_method "#{attr}" do
      instance_eval("@#{attr}")
    end
  end
end