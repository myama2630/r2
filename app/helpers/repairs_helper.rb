module RepairsHelper

  # �G���W�������o�^�̂��߂̃p�X�𐶐�����  
  def engine_arrived_path(engine)
    return '/repairs/engineArrived/' + engine.id.to_s
  end

  # �����˗��̂��߂̃p�X�𐶐�����
  def order_repair_path(repair)
    return '/repairs/repairOrder/' +  repair.id.to_s
  end
  
  # �����J�n�o�^�̂��߂̃p�X�𐶐�����
  def start_repair_path(repair)
    return '/repairs/repairStarted/' +  repair.id.to_s
  end

  # ���������o�^�̂��߂̃p�X�𐶐�����
  def finish_repair_path(repair)
    return '/repairs/repairFinished/' +  repair.id.to_s
  end
  
end
