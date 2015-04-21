class Topic < ActiveRecord::Base
  has_many :votes, dependent: :destroy

  def self.search(search)
    if search
      self.where("title LIKE ? OR description LIKE ?", "%#{search}%", "%#{search}%")
    else
      self.all
    end
  end
end
