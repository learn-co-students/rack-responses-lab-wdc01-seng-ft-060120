require 'rack'
 class Application
    def call(env)
        resp = Rack::Response.new
        now = Time.now
        
        if now.hour <= 12
            resp.write "Good Morning!"
        else 
            resp.write "Good Afternoon!"
        end
        resp.finish
    end 
    
  end








# class MyServer
#   def call(env)
#     return [ 200, {'Content-Type' => 'text/html'}, pretty_response ]
#   end
 
#   def pretty_response
#     (Time.now.to_i % 2).zero? ?  ["<em>This isn't so bad</em>"] : ["<strong>Hello</strong>"]
#   end
# end
 