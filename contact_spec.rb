require 'rspec'
require_relative 'contact'
require_relative 'spec_helper'

describe Contact do

  subject(:new_user) { Contact.new('joe', 'a@b.com') }

  describe "initialization" do
    it "will raise an argument error if less than 2 arguments given" do
      expect{ Contact.new('check') }.to raise_error ArgumentError
    end 
    
    it "will create a new instance of the Contact class" do
      expect(Contact.new("me","you")).to be_an_instance_of Contact
    end

    it "will populate the name instance variable" do
      expect(new_user.name).to be == 'joe'
    end

    it "will populate the email instance variable" do
      expect(new_user.email).to be == 'a@b.com'
    end

  end

  describe "#to_s" do
    it "will return a string representation of the contact" do
      pending
    end
  end

  # use . for class methods
  describe ".create" do
    it "will push the entry to the contacts array" do
      expect(Contact.get_contacts).to receive(:create).with('me', 'you')   
    end
  end

  # use . for class methods
  describe ".find" do

  end

  # use . for class methods
  describe ".all" do

  end

end
