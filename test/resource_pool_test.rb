class ResourcePoolTest < Test::Unit::TestCase
  # test interface. quack! quack!
  [:open, :isOpen, :close, :closeNow, :acquire, :release, :add, :remove, :removeNow].each do |method_name|
    define_method("test_responds_to_#{method_name}") do
      assert ResourcePool.new.respond_to?(method_name), "Expected ResourcePool to respond to #{method_name}."
    end
  end

  # The pool shall not allow any resource to be acquired unless the pool is open.
  def test_cannot_acquire_if_closed
    pool = ResourcePool.new
    def pool.isOpen; false; end

    assert_nothing_raised { pool.acquire }
  end

  # TODO: Resources can be released at any time.
  # TODO: Resources can be added or removed at any time.

  # TODO: The acquire() method should block until a resource is available.

  # TODO: If a resource cannot be acquired within the timeout
  #       interval specified in the acquire(long, TimeUnit) method,
  #       either a null can be returned or an exception can be thrown.

  # TODO: The add(R) and remove(R) methods return true if the pool was modified
  #       as a result of the method call or false if the pool was not modified.

  # TODO: The remove(R) method should be such that if the resource
  #       that is being removed is currently in use, the remove
  #       operation will block until that resource has been released.

  # TODO: removeNow removes the given resource immediately without waiting
  #       for it to be released. It returns true if the call resulted in the
  #       pool being modified and false otherwise.

  # TODO: close() should block until all acquired resources are released.

  # TODO: closeNow() closes the pool immediately without waiting for all
  #       acquired resources to be released.
end