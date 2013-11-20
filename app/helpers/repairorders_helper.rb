module RepairordersHelper

  # �G���W���ԋp�o�^�̂��߂̃p�X�𐶐�����
  def engine_returning_path(engine)
    return '/repairorders/engineReturning/' + engine.id.to_s
  end

  # �����˗��̂��߂̃p�X�𐶐�����
  def repair_ordered_path(repairorder)
    return '/repairorders/repairOrdered/' +  repairorder.id.to_s
  end
  
  # �d���̂��߂̃p�X�𐶐�����
  def repair_accepted_path(repairorder)
    return '/repairorders/repairAccepted/' +  repairorder.id.to_s
  end

end
