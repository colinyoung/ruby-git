module Git
  class Submodules
    
    def initialize(base)
      @base = base
    end
    
    def list
      submodules = {}
      
      @base.lib.submodules.each do |l|
        exp = /([\-0-9A-f]+) ([^ ]+)/
        m = exp.match(l)
        ref = m[1]
        path = m[2]
        
        submodules[path] = Git::Submodule.new(:ref => ref, :path => path)
      end
      
      submodules
    end
    
  end
end
