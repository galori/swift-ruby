

class Object
  def method_missing(method,*args)
    super if !(method.to_s.end_with?('?'))
  end
end
