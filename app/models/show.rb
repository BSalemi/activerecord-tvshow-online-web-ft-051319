class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    Show.find_by_sql("SELECT * FROM shows ORDER BY rating DESC LIMIT 1")[0]
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    Show.find_by_sql("SELECT * FROM shows ORDER BY rating ASC LIMIT 1")[0]
  end

  def self.ratings_sum
    Show.sum(:rating)
  end

  def self.popular_shows
    Show.connection.select_all("SELECT * FROM shows WHERE rating > 5")
  end

end
