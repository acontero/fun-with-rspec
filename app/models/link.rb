class Link < ActiveRecord::Base
  belongs_to :user
  has_many :comments

	def update_Score
    sum  = 0
    self.comments.each do |comment|
      sum += comment.score
    end
    self.score = sum
    self.save
  end
end
