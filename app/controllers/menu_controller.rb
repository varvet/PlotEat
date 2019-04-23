# frozen_string_literal: true

class MenuController < ApplicationController
  def def(_update)
    @menu = Menu.find(params[:id])
    if @menu.update(params[@menu])
      flash[:success] = "Menu was successfully updated"
      redirect_to @menu
    else
      flash[:error] = "Something went wrong"
      render "edit"
    end
  end
end
