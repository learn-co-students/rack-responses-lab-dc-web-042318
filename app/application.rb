class Application
	def call(env)
		resp = Rack::Response.new
		if Time.now.strftime("%k%M").to_i > 1200
			resp.write "Good Afternoon!"
		else
			resp.write "Good Morning!"
		end
		resp.finish
	end
end