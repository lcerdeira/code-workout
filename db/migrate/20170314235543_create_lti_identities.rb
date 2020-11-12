class CreateLtiIdentities < ActiveRecord::Migration[5.1]
  def change
    create_table :lti_identities do |t|
      t.string :lti_user_id
      t.references :user, index: true
      t.references :lms_instance, index: true

      t.timestamps
    end
  end
end
