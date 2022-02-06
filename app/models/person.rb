class Person < ApplicationRecord

    def movies
        Movie.where({ person_id: self.id })
    end

    def roles
        Role.where({ person_id: self.id })
    end

end
