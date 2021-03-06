class Book
  include Mongoid::Document

  belongs_to :user
  belongs_to :author
  has_many :listbook
  
  field :title, type: String
  field :pages, type: Integer
  field :isbn, type: String
  field :genre, type: String

  validates :title, :presence => { :message => "All books must have a title."}
  
end
