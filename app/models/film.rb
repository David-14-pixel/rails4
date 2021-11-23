class Film < ActiveRecord::Base
    self.table_name = "film"

     belongs_to :language, foreign_key: "language_id"
     has_many :film_categories, foreign_key: "film_id"
     has_many :categories, through: :film_categories
end
