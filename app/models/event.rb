class Event < ApplicationRecord
    has_many :todos, dependent: :destroy
    has_many :comments, dependent: :destroy
    has_many_attached :attachments, dependent: :destroy
    validates_presence_of :title
    validates_uniqueness_of :title
end
