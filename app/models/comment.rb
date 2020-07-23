# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  commenter  :string
#  body       :text
#  article_id :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Comment < ApplicationRecord
  belongs_to :article
  validates :commenter , presence: true, length: { minimum: 5 }, format: { with: /\A[a-zA-Z]+\z/}
  validates :body , presence: true
  after_destroy :log_destroy_action
  after_create :log_create_action
  
  private
  def log_create_action
    puts 'comment created'
  end

  def log_destroy_action
    puts 'Comments destroyed'
  end
end
