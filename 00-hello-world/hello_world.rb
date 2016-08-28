def hello_world(name = "World")
  #name != nil
  if name == ""
    return "Hello, World!"
  end
  return "Hello, #{name.downcase.capitalize}!"
end
