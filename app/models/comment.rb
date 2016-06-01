class Comment < ActiveRecord::Base
  belongs_to :prayer

  validates :name, :prayer_intention, presence: true

  include Humanizer
  require_human_on :create
end
