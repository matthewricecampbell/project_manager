class Project < ActiveRecord::Base
  has_many :tasks, dependent: :destroy
  attr_accessible :description, :title
end
