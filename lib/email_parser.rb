# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    attr_reader :emails

    def initialize(emails)
        @emails = emails
    end

    def parse
        pattern = /, | |,/
        emails.split(pattern).uniq
    end

end

# email_list1 = "avi@test.com,arel@test.com test@avi.com test@arel.com"
# email_list2 = "hello yes this@email.com isnot@ anemail.com"


# email_list = EmailAddressParser.new(email_list1)
# email_list.parse