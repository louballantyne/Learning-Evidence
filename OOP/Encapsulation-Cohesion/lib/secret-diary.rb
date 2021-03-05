#Initially the `SecretDiary` class is locked, meaning `add_entry` and `get_entries`
#should throw an error.

#When the user calls `unlock`, `add_entry` and `get_entries` should work as desired.

#When the user locks the diary, by calling `lock`, `add_entry` and `get_entries` should,
#again, throw an error.
require_relative 'lock'
class SecretDiary
  def initialize
    @lock = LockState.new
    @entries = []
  end

  def add_entry(entry)
    return "Diary locked" if (@lock.lock_state == true)
    @entries << entry
  end

  def get_entries
    (@lock.lock_state == true ? "Diary locked" : @entries)
  end

  def unlock
    @lock.unlock
  end

  def lock
    @lock.lock
  end
end
