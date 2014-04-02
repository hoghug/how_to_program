class Lesson < ActiveRecord::Base
  validates :name, :presence => true;
  validates :description, :presence => true;
  validates :number, :presence => true;
  validates :section_id, :presence => true;

  belongs_to :section
end
