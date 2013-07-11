class Section < ActiveRecord::Base
  default_scope order('sections.id ASC')
  
  attr_accessible       :name, 
                        :title,

                        ##belongs_to##

                        ##has_many##
                        :subsection_ids



  has_many              :subsections

  validates_presence_of :title

  before_save           :create_name

  private
  
  def create_name
    self.name = title.parameterize
  end
end