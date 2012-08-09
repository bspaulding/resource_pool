class ResourcePoolTest < Test::Unit::TestCase
  # test interface. quack! quack!
  [:open, :isOpen, :close, :acquire, :release, :add, :remove].each do |method_name|
    define_method("test_responds_to_#{method_name}") do
      assert ResourcePool.new.respond_to?(method_name), "Expected ResourcePool to respond to #{method_name}."
    end
  end
end