class SessionsController<ApplicationController
  

  def create

    if params[:student]

        @student = Student.find_by(name: params[:student][:name])

        @student.authenticate(params[:student][:password])
        session[:student_id] = @student.id
        redirect_to student_path(@student)
    elsif params[:instructor]
        @instructor = Instructor.find_by(name: params[:instructor][:name])
        @instructor.authenticate(params[:instructor][:password])
        session[:instructor_id] = @instructor.id
        redirect_to instructor_path(@instructor)
    else
      redirect_to login_path
    end 
  end
  
  def destroy
    session.destroy

    redirect_to '/'
  end
end