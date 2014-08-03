if false

class Article < ActiveRecord::Base
	has_many :comments
	validates :title, 	presence: true,
				length: { minimum: 5 }
end

end

class Article < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }
end
