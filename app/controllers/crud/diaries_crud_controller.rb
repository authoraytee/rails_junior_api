# frozen_string_literal: true

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
      @diary = Diary.new(title: '...', expiration: '...', kind: '...')

      if @diary.save
        redirect_to @diary
      else
        render :new
      end
    end
  end
end
