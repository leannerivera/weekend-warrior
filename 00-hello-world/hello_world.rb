require 'awesome_print'

# it "When given no name, it should greet the world!" do
#   expect(hello_world).must_equal 'Hello, World!'
# end
def hello_world(name = "World")
  return name == "" ? "Hello, World!" : "Hello, #{name}!"
end

#if name is empty, then return "Hello, World"
  #if nme is not empty then return "Hello Name!"

# it "When given 'Alice' it should greet Alice!" do
#   expect(hello_world 'Alice').must_equal 'Hello, Alice!'
# end
#
# it "When given 'Bob' it should greet Bob!" do
#   expect(hello_world 'Bob').must_equal 'Hello, Bob!'
# end
#
# it "When given an empty string it should greet the world!" do
#   expect(hello_world '').must_equal 'Hello, World!'
# end
