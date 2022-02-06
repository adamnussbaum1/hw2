class Role < ApplicationRecord

    def person
        Person.where(id: person_id)[0]
     end

     def movie
        Movie.where(id: movie_id)[0]
     end
     

end
