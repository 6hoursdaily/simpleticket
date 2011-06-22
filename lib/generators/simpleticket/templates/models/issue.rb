class Issue < ActiveRecord::Base
  include ActionView::Helpers::TextHelper
  
  validates_presence_of :description
  
  def summary_text
    if self.summary.nil? or self.summary.empty?
      return truncate(self.description)
    else
      return self.summary
    end
  end
  
  def status
    self.fixed ? 'Fixed' : 'Open'
  end
end
