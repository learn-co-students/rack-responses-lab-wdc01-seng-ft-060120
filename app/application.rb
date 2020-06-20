class Application
  def call(arg)
    resp = Rack::Response.new

    resp.write (Time.now.hour < 12) ? "Good Morning!" : "Good Afternoon!"
    resp.finish
  end
end
