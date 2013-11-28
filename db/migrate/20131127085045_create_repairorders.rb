class CreateRepairorders < ActiveRecord::Migration
  def change
    create_table :repairorders do |t|
      t.string :issueNo
      t.date :inquiryDate
      t.integer :loginUserId
      t.integer :branchCode
      t.integer :userId
      t.integer :placeCode
      t.string :orderer
      t.string :machineNo
      t.integer :timeOfRunning
      t.text :changeComment
      t.integer :sendingCompanyCode
      t.text :sendingComment
      t.date :deliveryDate
      t.integer :businessstatus_id

      t.timestamps
    end
  end
end
