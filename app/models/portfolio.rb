class Portfolio < ApplicationRecord
  has_many :technologies
  include ::Placeholder
  validates_presence_of :title, :body, :main_image, :thumb_image


  scope :angular, lambda { where(subtitle: "Angular") }
  scope :ruby_on_rails, lambda { where(subtitle: "Ruby on Rails") }

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= ::Placeholder.image_generator(height: '600', width: '400')
    self.thumb_image ||= ::Placeholder.image_generator(height: '350', width: '200')
  end
end

