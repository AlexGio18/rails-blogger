class Comment < ApplicationRecord
  before_save :default_author
  validates_presence_of :body
  belongs_to :article

  def default_author
    if self.author.nil? || self.author = ""
      self.author = "Anonymous"
    end
  end
end
