# frozen_string_literal: true

class EnableUuid < ActiveRecord::Migration[7.1]
  def change
    def change
      enable_extension 'pgcrypto'
    end
  end
end
