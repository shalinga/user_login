class CreateTermsOfServices < ActiveRecord::Migration
  def change
    create_table :terms_of_services do |t|
      t.text :description

      t.timestamps
    end
  end
end
