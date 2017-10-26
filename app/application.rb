class Application

  time = Time.new

  def call(env)
    resp = Rack::Response.new

    puts "#{time.hour}\n"

    if time.hour >= 0 && time.hour < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
