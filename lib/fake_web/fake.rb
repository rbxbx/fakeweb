class Fake
  attr_accessor :method

  def initialize(method)
    self.method = method
  end

  def uri(*args)
    @uri ||= args.first
  end

  def options
    { :body => body, :status => status, :page => page }.delete_if do |k, v|
      v.nil? || v.empty?
    end
  end

  def body(*args)
    @body ||= args.first
  end

  def status(*args)
    @status ||= args[0..1]
  end

  def page(*args)
    @page ||= args.first
  end

end
