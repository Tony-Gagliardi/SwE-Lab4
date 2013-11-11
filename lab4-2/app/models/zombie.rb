class Zombie < ActiveRecord::Base
  validates :name, presence: true
  attr_accessor :name, :tweets, :brains
  attr_accessible :name, :tweets, :brains
  has_many :weapons

  def initialize(attributes=nil)
  	super(attributes)
  	@name = 'Ash'
    @brains = nil
    @tweets = 2
  end

end
