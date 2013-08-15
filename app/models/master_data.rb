class MasterData < ActiveRecord::Base
  attr_accessible :description, :index, :key, :status, :type, :value
  alias_attribute :name, :value

  before_save :generate_key

  class << self 
    def selectable_list 
      unscoped.select{ [id, value] }.map{|data| [data.value, data.id] }
    end
  end

  protected
  def generate_key
    self.key = PinYin.of_string(value).join
    self.index = [key, value].join(" ")
  end

end
