class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me
  
  scope :selectable_list, lambda{ unscoped.select{ [id, name] } }

  belongs_to :department, class_name: "Department", foreign_key: "department_id"

  has_many :reported_repair_records, class_name: "RepairRecord", foreign_key: "apply_user_id"
  has_many :incharge_repari_records, class_name: "RepairRecord", foreign_key: "repairman_id"
 
end
