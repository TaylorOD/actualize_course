require "sinatra"
require "sinatra/namespace"
require "mongoid"


# DB setup
Mongoid.load! "mongoid.config"
Mongoid::Document

# Models
class Book
  include Mongoid::Document

  field :title, type: String
  field :author, type: String
  field :isbn, type: String

  validates :title, presence: true
  validates :author, presence: true
  validates :isbn, presence: true

  index({ title: "text" })
  index({ isbn: 1 }, { unique: true, name: "isbn_index" })
end

# Engpoints

namespace '/api/v1' do

  before do
    content_type 'application/json'
  end

  get '/books' do
    Book.all.to_json
  end
end

