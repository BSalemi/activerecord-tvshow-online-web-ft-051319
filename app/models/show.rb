class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    Show.find_by_sql("SELECT * FROM shows ORDER BY rating DESC LIMIT 1")[0]
  end
end
