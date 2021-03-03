#Initially the `SecretDiary` class is locked, meaning `add_entry` and `get_entries`
#should throw an error.

#When the user calls `unlock`, `add_entry` and `get_entries` should work as desired.

#When the user locks the diary, by calling `lock`, `add_entry` and `get_entries` should,
#again, throw an error.

class SecretDiary
  def initialize
    @lock = true
    @entries = []
  end

  def add_entry(entry)
    return "Diary locked" if @lock
    @entries << entry
  end

  def get_entries
    @lock ? "Diary locked" : @entries
  end
end


class LockState

  attr_accessor :lock

  def initialize()
    @lock = true
  end

  def unlock
    @lock = false
  end

  def lock
    @lock = true
  end

end

diary = SecretDiary.new
