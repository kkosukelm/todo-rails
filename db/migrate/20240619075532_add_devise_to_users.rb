# frozen_string_literal: true

class AddDeviseToUsers < ActiveRecord::Migration[7.1]
  def self.up
    change_table :users, bulk: true do |t|
      # t.string :email,              null: false, default: ""  # この行はすでに存在するためコメントアウト
      t.string :encrypted_password, null: false, default: ""
      t.string :reset_password_token
      t.datetime :reset_password_sent_at
      t.datetime :remember_created_at
      # 他のDeviseのカラム
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    # 他のインデックス
  end
end