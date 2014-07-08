require 'pushpop'

module Pushpop

  class File < Step

    PLUGIN_NAME = 'file'

    Pushpop::Job.register_plugin(PLUGIN_NAME, self)

    def run(last_response=nil, step_responses=nil)

      self.configure(last_response, step_responses)

      ::File.read(@path).split("\n")

    end

    def path(str)
      @path = str
    end

    def configure(last_response=nil, step_responses=nil)
      self.instance_exec(last_response, step_responses, &block)
    end

  end

end
