class CreateMailingLists < ActiveRecord::Migration
  def change
    create_table :mailing_lists do |t|
      t.string :recipient_name, null: false
      t.string :recipient_email, null: false

      t.timestamps null: false
    end
  end
end
