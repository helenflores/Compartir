class CreateNinos < ActiveRecord::Migration
  def self.up
    create_table (:ninos,:id=>false) do |t|
      t.string :codigo, :null => false, :primary => true
			t.string :estado_padrinazgo, :limit => 30
      t.date :fecha_nac
      t.string :sexo , :limit => 1
      t.string :pnombre , :limit => 25
      t.string :snombre, :limit => 25
      t.string :papellido, :limit => 25
      t.string :sapellido, :limit => 25
      t.string :habita_con, :limit => 25

      t.timestamps
    end
  end

  def self.down
    drop_table :ninos
  end
end
