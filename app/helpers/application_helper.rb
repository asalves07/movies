module ApplicationHelper
  def count_movie(movies)
    count = 0
    movies['results'].each do |movie|
      if movie['media_type'] == "movie"
        count += 1
      end
    end
    count
  end

  def count_tv(movies)
    count = 0
    movies['results'].each do |movie|
      if movie['media_type'] == "tv"
        count += 1
      end
    end
    count
  end

  def count_people(movies)
    count = 0
    movies['results'].each do |movie|
      if movie['media_type'] == "person"
        count += 1
      end
    end
    count
  end
end
