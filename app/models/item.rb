class Item < ApplicationRecord
  before_create :set_expiration_date
  belongs_to :user

  def set_expiration_date

    self.expires_at = Time.now + rand(1..7).days if expires_at.nil?
  end
end
