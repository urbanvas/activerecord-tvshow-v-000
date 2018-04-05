require 'pry'
class Show < ActiveRecord::Base
  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    Show.find_by self.highest_rating
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    a = Show.find_by self.lowest_rating
    # binding.pry
  end

  def self.ratings_sum
    Show.sum(:rating)
  end

  def self.popular_shows
    a = Show.find_by :rating > 5
  end

  def self.shows_by_alphabetical_order
    Show.order(:name)
  end


end
