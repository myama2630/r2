class Engine < ActiveRecord::Base

  # Association
  belongs_to :enginestatus
  belongs_to :company
  
  has_many :repairs
  has_many :engineorders
  
  # Validation
  validates :engineModelName, :presence => true  
  validates :serialno, :presence => true,
                       :uniqueness =>{:scope => :engineModelName }
  
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
  
  #エンジン型式とシリアルNoを併せてエンジン名として表示する。(engineのselect_collectionで使用)
  def engine_name
    "#{engineModelName} ( #{serialno} )"
  end
end
