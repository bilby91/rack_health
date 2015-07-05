module Rack

  class Health

    def initialize(app, opts = {})
      @app = app
      @opts = opts
    end

    def call(env)
      if env['ORIGINAL_FULLPATH'] == health_check_path
        [200, {}, ['{"status":"OK"}']]
      else
        @app.call env
      end
    end

    def health_check_path
      @opts[:path]
    end

  end

end
