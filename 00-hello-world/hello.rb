# The `Hello World!` program will greet me, the caller.

# If I tell the program my name is _Alice_, it will greet me by saying _Hello, Alice!_.

# If I neglect to give it my name, it will greet me by saying _Hello, World!_.

def hello_world(name="World")
  if name != ''
    return "Hello, #{name}!"
  else
    return "Hello, World!"
  end
end

# hello_world("Alice")
# hello_world()
# hello_world("Bob")
