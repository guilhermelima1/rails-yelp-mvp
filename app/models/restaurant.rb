class Restaurant < ApplicationRecord
    has_many :reviews, dependent: :destroy
# A restaurant must have a name, an address and a category.
# A restaurant’s category must belong to this fixed list: ["chinese", "italian", "japanese", "french", "belgian"].
# When a restaurant is destroyed, all of its reviews must be destroyed as well.
# A review must belong to a restaurant.
# A review must have content and a rating.
# A review’s rating must be a number between 0 and 5.
validates :name, presence: true
validates :address, presence: true
validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }

end
