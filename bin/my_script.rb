require 'addressable/uri'
require 'rest-client'

def unknown
url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/users/5.json',
  query_values: {
      'some_category[a_key]' => 'another value',
      'some_category[a_second_key]' => 'yet another value',
      'some_category[inner_inner_hash][key]' => 'value',
      'something_else' => 'aaahhhhh'
    }
  ).to_s
end

def create_user
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users.json'
  ).to_s

  begin
  puts RestClient.post(
    url,
    { user: { name: "Gizmo", email: "who_cares@gmail.com"} }
  )
  rescue StandardError => e
    puts "Unprocessable Entity"
  end
end

def

create_user
