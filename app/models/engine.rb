class Engine < ActiveRecord::Base

  # Association
  belongs_to :enginestatus
  belongs_to :company
  
  has_many :repairs
  has_many :engineorders
  
  # Validation
  validates :engine_model_name, :presence => true  
  validates :serialno, :presence => true,
                       :uniqueness =>{:scope => :engine_model_name }
  
  # Get unclosed repair
  def current_repair
    if !(repairs.blank?)
      repairs.each do | repair |
        if repair.opened?
         return repair
        end
      end
    end
    return nil
  end
  
  #エンジン型式とシリアルNoを併せてエンジン名として表示する。
  def engine_name
    "#{engine_model_name} ( #{serialno} )"
  end

  #完成品のエンジン一覧を取得する。
  def self.completedEngine
     return Engine.where(enginestatus_id = 3)
  end

end
