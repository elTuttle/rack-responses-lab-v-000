class Application

  def call(env)
    resp = Rack::Response.new
    
    if time >= 12
      resp.write "You Win"
    elsif time < 12 
      resp.write "You Lose"
    end

    resp.finish
  end

end