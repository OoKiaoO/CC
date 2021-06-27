class RecordsController < ApplicationController
  before_action :find_record, only[:show, :destroy]

  def index
    @records = Record.all # filter only records of current date
  end

  def show
  end

  def new
    @record = Record.new
  end

  def create
    @record = Record.new(record_params)
    @record.save!

    redirect_to record_path(@record)
  end

  def destroy
    @record.destroy

    redirect_to records_path
  end

  private

  def record_params
    params.require(:record).permit(:meal_type, :date, :total_cal)
  end

  def find_record
    @record = Record.find(params[:id])
  end
end
