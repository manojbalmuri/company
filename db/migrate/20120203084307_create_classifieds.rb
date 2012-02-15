class CreateClassifieds < ActiveRecord::Migration
  def self.up
    create_table :classifieds do |t|
      t.string :title
      t.string :description
      t.string :location
      t.integer :expiredate
      t.string :phoneno
      t.string :email_id

      t.timestamps
    end
  end

  def self.down
    drop_table :classifieds
  end
end
