# Build a class EmailAddressParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'


class EmailAddressParser

  attr_accessor :email_addresses

  def initialize(email_addresses)
    @email_addresses = email_addresses
  end

  def parse
    temp_array = email_addresses.split(/\,|\s/).uniq
    temp_array.delete_if {|x| x == ""}
    #remove duplicate emails and " "
  end

end
