class Player < ActiveRecord::Base

  #TODO Add player constraint and LOV for position, Country
  #attr_accessor :name, :weight , :size, :position, :age, :country
  validates :name, :weight , :height, :position, :age, :country, presence:true

  validates :name, uniqueness: true
  validates :weight, :height, :age, numericality: {greater_than: 0}
  validates :picture, allow_blank: true, format: { with: %r{\.(gif|jpg|png)\Z}i, message: 'must be a URL for GIF, JPG or PNG.'}
  validates :position, inclusion: { in: %w(Foward Defencemen Goalie), message: '%{value} is not a valid position'}

end
