# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    def initialize(emails_string)
      @emails_string = emails_string
    end
  
    def parse
      email_list = []
      emails = @emails_string.split(/[, ]+/)
      emails.each do |email|
        email_list << email.strip unless email.strip.empty?
      end
  
      email_list.uniq
    end
  end
  