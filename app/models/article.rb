class Article < ApplicationRecord
    has_many :commnets

    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }
end
