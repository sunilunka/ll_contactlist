require_relative 'contact'

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

  def add_new_name
    print "Enter full name: "
    name = gets.chomp
  end

  def add_new_email
    print "Enter email: "
    email = gets.chomp
  end

  def add_new_contact
    new_name = add_new_name
    new_email = add_new_email
    Contact.create(new_name, new_email)
    puts 
    puts "Great, #{new_name} with email #{new_email}, has been added."
    puts
    run
  end

  def list_all
     Contact.all 
     puts
     run
  end

  def program_response(response)
    option = response.downcase
    case option
    when 'new'
      add_new_contact
    when 'list'
      list_all
    when 'quit'
      puts '*** Ok, have a good day adieu! ***'
      exit
    else 
      puts "Sorry that's that's not a valid option. Try again."
      puts
      run
    end
  end

end
