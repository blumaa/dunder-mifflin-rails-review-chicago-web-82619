class Employee < ApplicationRecord
  belongs_to :dog
  validates :alias, :title, uniqueness: true { case_sensitive: false}

  def full_name
    self.first_name + " " + self.last_name
  end
end
