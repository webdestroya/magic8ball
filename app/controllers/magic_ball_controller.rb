class MagicBallController < ApplicationController
  
  def show
    @answers = [
      "As I see it, yes",
      "It is certain",
      "It is decidedly so",
      "Most likely",
      "Outlook good",
      "Signs point to yes",
      "Without a doubt",
      "Yes",
      "Yes - definitely",
      "You may rely on it",
      "Reply hazy, try again",
      "Ask again later",
      "Better not tell you now",
      "Cannot predict now",
      "Concentrate and ask again",
      "Don't count on it",
      "My reply is no",
      "My sources say no",
      "Outlook not so good",
      "Very doubtful"
      ]
      
    @answer = @answers[rand(@answers.size)]
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => {:answer => @answer} }
      format.json  { render :json => {:answer => @answer} }
    end
    
  end
  
end
