class HomeController < ApplicationController
  before_action :set_user, except: [:score]
  
  #test 
  def test_ok
    @test = params[:test_1]
    # num1 = params[:test_1]
    # result = num1
    # if (result == "1")
    #   render plain:"<script type='text/javascript'>alert('정답');</script>"
    #   # render(
    #   #   html: "<script>alert('Yes users!')</script>".html_safe,
    #   #   layout: 'application'
    #   # )
    # else
    #   render plain:"<script type='text/javascript'>alert('땡');</script>"
    #   # render(
    #   #   html: "<script>alert('No users!')</script>".html_safe,
    #   #   layout: 'application'
    #   # )
    # end
  end
  
  def test
    a_date = Time.new(2015, 8, 1, 14, 35, 0)
    b_date = Time.new(2015, 8, 1, 14, 37, 0)
    @test = ((b_date - a_date)).to_i
  end
  
  # 랭킹
  def score
    reset_session
    @scores = Score.order(clear: :asc)
  end
  def fail
    Score.create(
      major: session[:current_user_major],
      number: session[:current_user_number],
      name: session[:current_user_name]
    )
    redirect_to "/home/score"
  end
  def result
    
  end
  
  # 시나리오
  def scenario0
  end
  def scenario1
  end
  def scenario2
  end
  def scenario3
  end
  def scenario4
  end
  def scenario5
  end
  
  # 문제
  def question1
    
  end
  def question2
  end
  def question3
  end
  def question3
  end
  
  # 정답
  def answer1
    result = params[:text1]
    question1 = Question.find(1)
    # question1 = "0000"
    
    # 여기서부터
    now_time = Time.new.in_time_zone("Asia/Seoul")
    session[:res] = 0
    if (result == question1.q_answer)
    # if (result==question1)
      session[:wrong] =""
      session[:answer]=0
      redirect_to "/home/scenario2"
    else
      session[:answer] += 1
      if (session[:answer]==1)
        session[:wrong] = "틀렸습니다!"
      elsif (session[:answer]==2)
        session[:answer] = 0
        session[:times] = Time.now.in_time_zone("Asia/Seoul").advance(seconds: 30).strftime("%B %d, %Y %H:%M:%S")
        session[:wrong] = ""
        session[:res] = 1
      end
      render :question1
    end
  end
  def answer2
    num1 = params[:text1]
    num2 = params[:text2]
    num3 = params[:text3]
    num4 = params[:text4]
    question1 = Question.find(2)
    # question1 = "0000"
    result = num1 + num2 + num3 + num4
    
    # 여기서부터
    now_time = Time.new.in_time_zone("Asia/Seoul")
    session[:res] = 0
    if (result == question1.q_answer)
    # if (result==question1)
      session[:wrong] =""
      session[:answer]=0
      redirect_to "/home/scenario3"
    else
      session[:answer] += 1
      if (session[:answer]==1)
        session[:wrong] = "틀렸습니다!"
      elsif (session[:answer]==2)
        session[:answer] = 0
        session[:times] = Time.now.in_time_zone("Asia/Seoul").advance(seconds: 30).strftime("%B %d, %Y %H:%M:%S")
        session[:wrong] = ""
        session[:res] = 1
      end
      render :question2
    end
  end
  
  def answer3
    result=params[:text1]
    question3 = Question.find(3)
    # 여기서부터
    now_time = Time.new.in_time_zone("Asia/Seoul")
    session[:res] = 0
    if (result == question3.q_answer)
    # if (result==question1)
      session[:wrong] =""
      session[:answer]=0
      redirect_to "/home/scenario4"
    else
      session[:answer] += 1
      if (session[:answer]==1)
        session[:wrong] = "틀렸습니다!"
      elsif (session[:answer]==2)
        session[:answer] = 0
        session[:times] = Time.now.in_time_zone("Asia/Seoul").advance(seconds: 30).strftime("%B %d, %Y %H:%M:%S")
        session[:wrong] = ""
        session[:res] = 1
      end
      render :question3
    end
  end
  
  def answer5
    result = params[:sel]
    check_answer
    # 여기서부터
    now_time = Time.new.in_time_zone("Asia/Seoul")
    session[:res] = 0
    if (result == "sel1")
      # if (result==question1)
      session[:wrong] =""
      session[:answer]=0
      Score.create(
        major: session[:current_user_major],
        number: session[:current_user_number],
        name: session[:current_user_name],
        clear: @clear,
        clear_m: @clear_m,
        clear_s: @clear_s
      )
      redirect_to "/home/result"
    else
      session[:answer] += 1
      if (session[:answer]==1)
        session[:wrong] = "좀 더 좋은 선택이 있을거야!"
      elsif (session[:answer]==2)
        session[:answer] = 0
        session[:times] = Time.now.in_time_zone("Asia/Seoul").advance(seconds: 30).strftime("%B %d, %Y %H:%M:%S")
        session[:wrong] = ""
        session[:res] = 1
      end
      render :question5
    end
  end
  
  public
  def set_user
    if (session[:current_user_number].nil?)
      redirect_to '/session/new'
    else
      set_time
      @user_name = session[:current_user_name]
    end
  end
  def set_time
    user = User.find_by(user_number: session[:current_user_number])
    @time = user.created_at.in_time_zone("Asia/Seoul").strftime("%B %d, %Y %H:%M:%S")
  end
  def check_answer
    user = User.find_by(user_number: session[:current_user_number])
    starttime = user.created_at.in_time_zone("Asia/Seoul")
    cleartime = Time.now.in_time_zone("Asia/Seoul")
    
    @clear = (cleartime-starttime).to_i
    @clear_m = ((cleartime-starttime)/60).to_i
    @clear_s = ((cleartime-starttime)%60).to_i
  end
end
