class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
    render :index
  end

  def show
    @employee = Employee.find(params[:id])
    render :show
  end

  def new
    @employee = Employee.new
    render :new
  end

  def edit
    @employee = Employee.find(params[:id])
    render :edit
  end

  def create
    @employee = Employee.new(params.require(:employee).permit(:fname, :lname, :dob, :empid))
    if @employee.save
      flash[:success] = "New employee succesfully created!"
      redirect_to employees_url  
    else
      flash.now[:error] = "New employee failed to be created."
      render :new  
    end
  end

  def update
    @employee = Employee.find(params[:id])
    if @employee.update(params.require(:employee).permit(:fname, :lname, :dob, :empid))
      flash[:success] = 'Employee was successfully updated!'
      redirect_to employee_url(@employee)
    else
      flash.now[:error] = 'Employee failed to be updated.'
      render :edit
    end
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    flash[:success] = 'Employee was successfully deleted.'
    redirect_to employees_url
  end

end
