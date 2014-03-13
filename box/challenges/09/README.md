# Challenge 09

Wrap your app's Faraday adapters in a a ``Connection`` class like this:

```ruby
class MyApp::Connection
  def self.billing
    # … create Faraday connection
  end
end

class MyApp::MyApp < Sinatra::Base
  get '/some_route' do
    Connection.billing.post '/invoice'
  end
end
```

Name your connection method ``hello_world_app``.
