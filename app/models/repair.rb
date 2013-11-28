class Repair < ActiveRecord::Base

  # validation
  
  # Association
  belongs_to :engine
  
  # ��ƒ����ǂ����𔻒肷��
  def opened?
    return self.finishDate.nil?
  end

  # �����_�ł̔��sNo�̐���(�N��-�}��3��)
  def self.createIssueNo
    issuedate = Date.today.strftime("%Y%m") 
    return issuedate + "-" + 
           sprintf("%03d", self.where("issueNo like ?", issuedate + "%").max() + 1 )
  end
  
end
