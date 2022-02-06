class Person < ApplicationRecord

    def movies
        Movie.where({ person_id: id })
    end

    def roles
        Role.where({ person_id: id })
    end

end

#Role.where({ person_id: self.id })