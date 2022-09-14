class Author
    attr_reader :first_name,
                :last_name,
                :books

    def initialize(author)
        @first_name = author[:first_name]
        @last_name = author[:last_name]
        @books = []
    end

    def name
        "#{first_name} #{last_name}"
    end
end