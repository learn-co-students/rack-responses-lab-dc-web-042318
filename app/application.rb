require 'time'

class Application

    def call(env)
      resp = Rack::Response.new
   
      time = Time.now
   
      if time < Time.parse("12:00")
        resp.write "Good Morning!"
      else
        resp.write "Good Afternoon!"
      end
   
      resp.finish
    end
  
  end
  