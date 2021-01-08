class EmployeeLeavesController < ApplicationController
  before_action :set_employee_leafe, only: [:show, :edit, :update, :destroy]

  # GET /employee_leaves
  # GET /employee_leaves.json
  def index
    @employee_leaves = EmployeeLeave.all
  end

  # GET /employee_leaves/1
  # GET /employee_leaves/1.json
  def show
  end

  # GET /employee_leaves/new
  def new
    @employee_leafe = EmployeeLeave.new
  end

  # GET /employee_leaves/1/edit
  def edit
  end

  # POST /employee_leaves
  # POST /employee_leaves.json
  def create
    @employee_leafe = EmployeeLeave.new(employee_leafe_params)

    respond_to do |format|
      if @employee_leafe.save
        format.html { redirect_to @employee_leafe, notice: 'Employee leave was successfully created.' }
        format.json { render :show, status: :created, location: @employee_leafe }
      else
        format.html { render :new }
        format.json { render json: @employee_leafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employee_leaves/1
  # PATCH/PUT /employee_leaves/1.json
  def update
    respond_to do |format|
      if @employee_leafe.update(employee_leafe_params)
        format.html { redirect_to @employee_leafe, notice: 'Employee leave was successfully updated.' }
        format.json { render :show, status: :ok, location: @employee_leafe }
      else
        format.html { render :edit }
        format.json { render json: @employee_leafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employee_leaves/1
  # DELETE /employee_leaves/1.json
  def destroy
    @employee_leafe.destroy
    respond_to do |format|
      format.html { redirect_to employee_leaves_url, notice: 'Employee leave was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee_leafe
      @employee_leafe = EmployeeLeave.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def employee_leafe_params
      params.require(:employee_leafe).permit(:status, :reason, :start_date, :end_date, :Request_employee_id, :action_employee_id)
    end
end
