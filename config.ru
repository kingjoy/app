class Application
    def call(env)
        p env
        [200, { "content-type" => "text/html" }, ["Hello MMfood"]]
    end
end

run Application.new