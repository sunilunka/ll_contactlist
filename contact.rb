require 'pry'
require 'pg'

class Contact


  attr_accessor :first_name
  attr_accessor :last_name
  attr_accessor :email
  attr_accessor :contacts
  ## In-memory list of contacts
  
  # @@contacts = []

  def initialize(first_name, last_name, email)
    @first_name = first_name
    @last_name = last_name
    @email = email
  end




  # def to_s
  #   # TODO: return string representation of Contact
  #   @@contacts.each do |contact|
  #     puts 
  #   end
  # end

  ## Class Methods
  class << self
    def create(name, email)
      # # TODO: Will initialize a contact as well as add it to the list of contacts
      new_user = Contact.new(name, email)
      @@contacts << new_user
    end

    def get_contacts
      
™    end

    def find(index)
      # TODO: Will find and return contact by index
    end

    def all
      # TODO: Return the list of contacts, as is
      # puts "#{@@contacts}"
      @@contacts.each_index do |entry|
        puts "##{entry}"
        puts
      end
    end
  end

end
