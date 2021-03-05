class LockState

  attr_accessor :lock_state

  def initialize
    @lock_state = true
  end

  def unlock
    @lock_state = false
  end

  def lock
    @lock_state = true
  end

end
