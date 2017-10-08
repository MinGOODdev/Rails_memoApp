class MemosController < ApplicationController
  # Create
  def new
    # form_for를 위해서 선언한 것이라고 생각하자.
    @memo = Memo.new
  end
  
  def create
    @memo = Memo.new
    @memo.title = params[:memo][:title]
    @memo.content = params[:memo][:content]
    @memo.user_id = params[:memo][:user_id]
    @memo.save
    redirect_to @memo
    # redirect_to memo_path(@memo)와 의미가 같다.
    # 그리고 @memo를 파라미터로 넘겨주면 알아서 id를 찾아서 redirect한다.
  end
  
  # Retrieve
  def show
    
  end
  
  def index
    
  end
  
  # Update
  def edit
    
  end
  
  def update
    
  end
  
  # Destroy
  def destroy
    
  end
  
end
