class UsersController < ApplicationController
  # userの一覧表示
  def index
    # インスタンスの配列が格納される
    @users = User.all
  end

  def show
    puts "テスト"
    @user = User.find(params[:id])
  end

  # userの新規登録ページ表示
  def new
    @user = User.new
  end

  # userのデータ作成
  def create
    User.create!(user_params)
  end

  # userの更新ページ表示
  def edit
    @user = User.find(params[:id])
  end

  # userのデータ更新
  def update
    user = User.find(params[:id])
    user.update(user_params)
  end

  # userのデータ削除
  def destroy
    user = User.find(params[:id])
    user.destroy
  end

  private

  def user_params
    params.require(:user).permit(:name, :age)
  end
end
