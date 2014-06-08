

class Object
  def method_missing(method,*args)
    real_method = method.to_s.chomp('?').to_sym
    is_conditional = method.to_s.end_with?('?')

    if is_conditional
      if self.respond_to?(real_method)
        self.send(real_method,*args)
      end
    else
      super
    end
  end
end
