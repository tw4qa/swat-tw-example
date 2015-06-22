require 'sw2at-tw'
require 'timecop'

# Instance of this class will be available as @tw variable inside of RSpec context

class AppTestWorld < Swat::TestWorld::Base
# You can include your own modules here

  # Define your options and situation below
  BASE_OPTIONS = {}
  DEFAULT_OPTIONS = {}
  SITUATIONS = {}

  def init_situation
    if @options[:john]
      User.create(email: 'john.smith@gmail.com', full_name: 'John Smith')
    end

    if @options[:josh]
      User.create(email: 'josh.doe@gmail.com', full_name: 'Josh Doe')
    end
  end

  def some_very_specific_logic
    puts 'Hello Test Word!'
  end

end
