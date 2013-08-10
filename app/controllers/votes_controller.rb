class VotesController < ApplicationController

  def create
    topic = Topic.find(params[:topic_id])
    vote = topic.votes.build
    vote.save!
    session[:voted] ||= 0
    session[:voted] += 1
    redirect_to(topics_path)
  end
  
end
