module Git
  class Submodule
    
    attr_accessor :ref
    attr_accessor :path
    
    def initialize(h)
      @ref = h[:ref]
      @path = h[:path]
    end
    
  end
end