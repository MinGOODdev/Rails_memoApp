class MemosController < ApplicationController
  # 로그인 user 권한 검사
  before_action :authenticate_user!, except: [:show, :index]
  # @memo = Memo.find(params[:id])를 대체하기 위한 코드
  before_action :set_memo, only: [:show, :edit, :update, :destroy]
  before_action :is_owner?, only: [:edit, :update, :destroy]
  
  # Create
  def new
    # form_for에 채우기 위해서 선언.
    @memo = Memo.new
  end
  
  def create
    @memo = Memo.new(memo_params)
    # @memo.title = params[:memo][:title]
    # @memo.content = params[:memo][:content]
    # @memo.user_id = params[:memo][:user_id]
    @memo.save
    redirect_to @memo
    # redirect_to memo_path(@memo)와 의미가 같다.
    # 그리고 @memo를 파라미터로 넘겨주면 알아서 id를 찾아서 redirect한다.
  end
  
  # Retrieve
  def show
    # @memo = Memo.find(params[:id])
    @comment = Comment.new
    @comments = @memo.comments
  end
  
  def index
    # binding.pry
    @memos = Memo.order(created_at: :DESC).page(params[:page]).per(10)
  end
  
  # Update
  def edit
    # @memo = Memo.find(params[:id])
    unless current_user == @memo.user
      redirect_to memo_path
    end
  end
  
  def update
    # @memo = Memo.find(params[:id])
    # update는 save까지 알아서 처리한다.
    @memo.update(memo_params)
    # @memo.title = params[:memo][:title]
    # @memo.content = params[:memo][:content]
    # @memo.user_id = params[:memo][:user_id]
    # @memo.save
    redirect_to @memo
    # redirect_to memo_path(@memo)와 의미가 같다.
    # 그리고 @memo를 파라미터로 넘겨주면 알아서 id를 찾아서 redirect한다.
  end
  
  # Destroy
  def destroy
    # @memo = Memo.find(params[:id])
    @memo.destroy!
    redirect_to root_path
  end
  
  # 조금 더 세련되게 바꿔보자. (before_action)
  private
    def set_memo
      @memo = Memo.find(params[:id])
    end
    
    def memo_params
      #Rails 4 Strong Parameter
      params.require(:memo).permit(:title, :content, :user_id)
    end
    
    def is_owner?
      unless current_user == @memo.user
        redirect_to root_path
      end
    end
  
end
