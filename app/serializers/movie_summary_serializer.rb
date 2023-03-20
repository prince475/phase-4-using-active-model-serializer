class MovieSummarySerializer < ActiveModel::Serializer

  attributes :summary

  # creating a movie summary consisting of tile and decription of first 50 char
  def summary
    "#{self.object.title} - #{self.object.description[0..49]}..."
  end

end
