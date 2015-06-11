# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')

class EmailParser

  # attr_accessor :email_string
  # I suppose this method calls for the parser to do the parsing, but in real world, chances are we will parse first at initialize and then run code. So putting it in initialzie allows avodiding having to run parser every time.

  def initialize(emails)
    @emails_string = emails.gsub(",",  "").split(" ").uniq
    # gsub on a string => still a string
    # split on astring = > returns an array with duplicates
    # uniq on an array => returns array with unique values
  end

  def parse
    @emails_string # this will have duplicates and will be an array
  end

end

# emails = "john@doe.com, person@somewhere.org"
# parser = EmailParser.new(emails)

# parser.parse
# => ["john@doe.com", "person@somewhere.org"]


