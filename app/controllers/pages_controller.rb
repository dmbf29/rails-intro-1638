class PagesController < ApplicationController

  def about
    # render 'about.html.erb'
    # by default, it displays the view with the same name as the action
  end

  def contact
    # you pass info to the view with an instance variable
    # @members = Member.all
    # filter the members based on what they were searching for
    @members = ['sylvain', 'doug', 'yann', 'trouni', 'chieri']
    # raise # throws an error
    if params[:member].present?
      @members = @members.select do |member|
        # params[:member].downcase == member
        member.include?(params[:member])
      end
    end
  end

  def home
  end
end
