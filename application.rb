class Application

  def run
    show_main_menu
    input = gets.chomp
    program_response(input)
  end

  private

  # Prints the main menu only
  def show_main_menu
    puts "Welcome to the app. What's next?"
    puts " new      - Create a new contact"
    puts " list     - List all contacts"
    puts " quit     - Exit Application"
    print "> "
  end

  def program_response(response)
    option = response.downcase
    case option
    when 'new'
      puts "Creating a new contact"
    when 'list'
      puts 'Expect to list a new contact'
    when 'quit'
      puts '*** Ok, have a good day adieu! ***'
      exit
    end
  end

end
