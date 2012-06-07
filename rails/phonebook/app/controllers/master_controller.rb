class MasterController < ApplicationController
  def action
  end

  def list
    @phones = Phone.all
  end
end
