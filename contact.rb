require 'pry'

class Contact

  attr_reader :contacts
  ## In-memory list of contacts
  @@contacts = []

  attr_accessor :name
  attr_accessor :email

  def initialize(name, email)
    # TODO: assign local variables to instance variables
    @name = name
    @email = email
  end

  def to_s
    # TODO: return string representation of Contact
  end

  ## Class Methods
  class << self
    def create(name, email)
      # # TODO: Will initialize a contact as well as add it to the list of contacts
      new_user = Contact.new(name, email)
      @@contacts << new_user
    end

    def get_contacts
      @@contacts
    end

    def find(index)
      # TODO: Will find and return contact by index
    end

    def all
      # TODO: Return the list of contacts, as is
      # puts "#{@@contacts}"
      @@contacts.each do |entry|
         puts "Name: #{entry.name}"
         puts "Name: #{entry.email}"
         puts
        end
    end
  end

end
