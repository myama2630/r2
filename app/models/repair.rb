class Repair < ActiveRecord::Base

  # validation
  
  # Association
  belongs_to :engine
  
  # ��ƒ����ǂ����𔻒肷��
  def opened?
    return self.finish_date.nil?
  end

  # �����_�ł̔��sNo�̐���(�N��-�}��3��)
  def self.createIssueNo
    issuedate = Date.today.strftime("%Y%m") 
    return issuedate + "-" + 
           sprintf("%03d", self.where("issue_no like ?", issuedate + "%").max() + 1 )
  end
  
end
