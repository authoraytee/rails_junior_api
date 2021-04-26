module Crud
  class DiariesCrudController < ApplicationController
    def index
      @diaries = Diary.all
    end

    def show
      @diaries = Diary.find(params[:id])
    end

    def new
      @diary = Diary.new
    end

    def create
      @diary = Diary.new(diary_params)

      if @diary.save
        redirect_to controller: 'diaries_crud', action: 'index'
      else
        render :new
      end
    end

    def edit
      @diary = Diary.find(params[:id])
    end

    def update
      @diary = Diary.find(params[:id])

      if @diary.update(diary_params)
        redirect_to controller: 'diaries_crud', action: 'index'
      else
        render :edit
      end
    end

    def destroy
      @diary = Article.find(params[:id])
      @diary.destroy

      redirect_to root_path
    end

    private

    def diary_params
      params.require(:diary).permit(:title, :expiration, :kind)
    end
  end
end
