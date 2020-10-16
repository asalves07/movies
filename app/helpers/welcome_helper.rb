module WelcomeHelper
  def title_name(movie)
    if movie['title'] == nil
      movie['name']
    else
      movie['title']
    end
  end
end
