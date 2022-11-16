class Author < ApplicationRecord

    def name
        first_name + " " + last_name
    end

    validates :last_name, presence: true, 
                          length: { minimum: 2 }, 
                          format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }

    def count
        Author.all.length
    end

    has_and_belongs_to_many :papers
end
