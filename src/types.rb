
class Function
    attr_accessor :ast
    attr_accessor :env
    attr_accessor :params
    attr_accessor :fn

    def initialize(ast=nil,params=nil,env=nil,fn)
        @ast = ast
        @params = params
        @env = env
        @fn = fn
    end

    def gen_env(args)
        return Env.new(@env,@params,args)
    end
end

class Atom
    attr_accessor :val

    def initialize(val)
        @val = val
    end
end

