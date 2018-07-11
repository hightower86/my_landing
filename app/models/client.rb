class Client < ApplicationRecord
  validates :first_name,  :last_name, presence: true, length: { minimum: 2}
  validates :email, presence: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
  validates :phone,:presence => true,
            :numericality => true,
            :length => { :minimum => 10, :maximum => 15 }
  def full_name
    if first_name.blank? && last_name.blank?
      ""
    elsif first_name.blank?
      "#{last_name}"
    elsif last_name.blank?
      "#{first_name}"
    else
      "#{first_name}  #{last_name}"
    end
  end
end
