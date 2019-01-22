class Event < ApplicationRecord
    has_many :todos
    validates_presence_of :title
    validates_uniqueness_of :title
end
