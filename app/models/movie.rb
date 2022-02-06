class Movie < ApplicationRecord
    
    def roles
        Role.where({ movie_id: self.id })
    end

end


