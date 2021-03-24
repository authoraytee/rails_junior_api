
module Api
    module V1
      class DiariesController < ApplicationController
        def index
          diaries = Diary.order('created_at DESC');
          render json: {status: 'SUCCESS', message:'Loaded diaries', data:diaries},status: :ok
        end
  
        def show
          diary = Diary.find(params[:id])
          render json: {status: 'SUCCESS', message:'Loaded diary', data:diary},status: :ok
        end
  
        def create
          diary = Diary.new(diary_params)
  
          if diary.save
            render json: {status: 'SUCCESS', message:'Saved diary', data:diary},status: :ok
          else
            render json: {status: 'ERROR', message:'Diary not saved', data:diary.errors},status: :unprocessable_entity
          end
        end
  
        def destroy
          diary = Diary.find(params[:id])
          diary.destroy
          render json: {status: 'SUCCESS', message:'Deleted diary', data:diary},status: :ok
        end
  
        def update
            diary = Diary.find(params[:id])
          if diary.update_attributes(diary_params)
            render json: {status: 'SUCCESS', message:'Updated diary', data:diary},status: :ok
          else
            render json: {status: 'ERROR', message:'Diary not updated', data:diary.errors},status: :unprocessable_entity
          end
        end
  
        private
  
        def diary_params
          params.permit(:title, :expiration, :kind)
        end
      end
    end
  end

