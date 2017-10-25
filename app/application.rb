class Application

  def call(env)
    resp = Rack::Response.new

    time = Time.new
    time.hour = Kernel.rand(1..24)

    puts "#{time.hour}\n"

    if time.hour < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
