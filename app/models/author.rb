class Author
  include Mongoid::Document

  has_many :books

  field :first_name, type: String
  field :last_name, type: String
  field :gender, type: String
  field :country, type: String

  def full_name
  	[first_name, last_name].join(' ')
  end

  validates :first_name, :presence => { :message => "You must provide a first name."}
  validates :last_name, :presence => { :message => "You must provide a last name."}

end
