class Comment < ActiveRecord::Base
  belongs_to :link

  # after_update :update_Parent
  after_save :update_Parent

  def vote_up
  	self.score += 1
 	self.save 	
  end

  def update_Parent
  	if self.link != nil
  		self.link.update_Score
  	end
  end

end
