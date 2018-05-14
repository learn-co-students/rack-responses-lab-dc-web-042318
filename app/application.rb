class Application

 def call(env)
   resp = Rack::Response.new

   now = Time.now

   if now < Time.parse("12pm")
     resp.write "Good Morning!"
   else
     resp.write "Good Afternoon!"
  end
     resp.finish
 end

end
