class Comment < ActiveRecord::Base
  belongs_to :prayer

  include Humanizer
  require_human_on :create
end
