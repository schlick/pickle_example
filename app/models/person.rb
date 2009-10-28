class Person < ActiveRecord::Base
  
  belongs_to :company
  
  validates_presence_of :name
  validates_presence_of :age
  
  def child?
    age < 18
  end
  
  def adult?
    age >= 18
  end
  
  def activate
    Notifier.deliver_activation_notification(self)
  end

end
