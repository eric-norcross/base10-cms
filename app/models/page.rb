# == Schema Information
#
# Table name: pages
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  header     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  skin_id    :string(255)
#

class Page < ActiveRecord::Base
  extend FriendlyId

  friendly_id                   :name, use: [:slugged, :history]

  default_scope order('pages.title ASC')

                              ## DB Backed ##
  attr_accessible               :name,
                                :title, 
                                :content,
                                :slug,

                                ##belongs_to##
                                  :skin_id,

                              ## has_one ##

                              ## has_many ##

                              ## nested attributes ##
                                :images_attributes,
                                :figures_attributes,
                                :galleries_attributes

  belongs_to                    :skin
  
  has_many                      :images, as: :imageable, dependent: :destroy
  accepts_nested_attributes_for :images, reject_if: proc { |attrs| attrs['asset'].blank? && attrs['asset_cache'].blank? }, allow_destroy: true

  has_many                      :galleries, dependent: :destroy
  accepts_nested_attributes_for :galleries, allow_destroy: true #, reject_if: lambda { |a| a[:image].blank?}

  has_many                      :figures, as: :figurable, dependent: :destroy
  accepts_nested_attributes_for :figures, reject_if: lambda { |a| a[:link].blank?}, allow_destroy: true

  validates                     :name, 
                                presence: true,
                                format: { with: /^[0-9a-zA-Z \/_?:.,\s&-]*$/ }

  validates                     :title, 
                                allow_blank: true,
                                format: { with: /^[0-9a-zA-Z \/_?:.,\s&-]*$/ }

  validates                     :skin,
                                presence: true

  before_save                   :create_title

  private
  
  def create_title
    if title.blank?
      self.title = name
    end
  end
  
end
