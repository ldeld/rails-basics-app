class PagesController < ApplicationController
  def about
  end

  def contact
    @members = ['Irina', 'Lorenzo', 'Fille', 'Luis']
    if params[:member]
      @members = @members.select do |member|
        member.downcase.start_with?(params[:member].downcase)
      end
    end
  end

  def home
  end
end
