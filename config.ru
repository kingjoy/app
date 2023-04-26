require 'json'

class Application
  def call(env)
    req = Rack::Request.new(env)
    p JSON.parse( req.body.read )
    [
      200,
      { "content-type" => "application/json" },
      ['{ "status": "OK" }']
    ]
  end
end
run Application.new