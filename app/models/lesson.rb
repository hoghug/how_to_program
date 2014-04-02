class Lesson < ActiveRecord::Base
  validates :name, :presence => true;
  validates :description, :presence => true;
  validates :number, :presence => true;

  belongs_to :section
end
