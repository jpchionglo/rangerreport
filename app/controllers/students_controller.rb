class StudentsController < ApplicationController
    #CREATE
    
        def new
            #unless current_user.present?
            #    redirect_to students_url
            #end
            @new = Student.new
        end
        
        def create
            @new = Student.new
            @new.name          = params["name"]
            @new.grade         = params["grade"]
            @new.homeroom      = params["homeroom"] 
            @new.house         = params["house"]
            @new.absences      = params["absences"]
            @new.attendance    = params["attendance"]
            @new.tardies       = params["tardies"]
            @new.track         = params["track"]
            @new.servhrs       = params["servhrs"]
            @new.cgpa          = params["cgpa"]
            @new.ugpa          = params["ugpa"]
            @new.wgpa          = params["wgpa"]
            @new.crank         = params["crank"]
            @new.csize         = params["csize"]
            @new.credits       = params["credits"]
            @new.detentions    = params["detentions"]
            @new.eligible      = params["eligible"]
            @new.totalf        = params["totalf"]
            @new.totald        = params["totald"]
            @new.totalc        = params["totalc"]
            @new.totalb        = params["totalb"]
            @new.totala        = params["totala"]

            if @new.save
                redirect_to "/students", :notice => "Student created successfully."
            else
                render "new"
            end
        end
    
    #READ
    
        def show 
            @item = Student.find_by(:id => params[:id])
            if @item.present?
                render "show"
            else
                redirect_to students_url, :notice => "The student doesn't exist."
            end
        end
        
        def index
            @item = Student.all
            render "index"
        end
    
    #UPDATE
    
        def edit
            @item=Student.find(params[:id])
            render "edit"
        end
        
        def update
            @item=Student.find(params[:id])
            @item.name          = params["name"]
            @item.grade         = params["grade"]
            @item.homeroom      = params["homeroom"] 
            @item.house         = params["house"]
            @item.absences      = params["absences"]
            @item.attendance    = params["attendance"]
            @item.tardies       = params["tardies"]
            @item.track         = params["track"]
            @item.servhrs       = params["servhrs"]
            @item.cgpa          = params["cgpa"]
            @item.ugpa          = params["ugpa"]
            @item.wgpa          = params["wgpa"]
            @item.crank         = params["crank"]
            @item.csize         = params["csize"]
            @item.credits       = params["credits"]
            @item.detentions    = params["detentions"]
            @item.eligible      = params["eligible"]
            @item.totalf        = params["totalf"]
            @item.totald        = params["totald"]
            @item.totalc        = params["totalc"]
            @item.totalb        = params["totalb"]
            @item.totala        = params["totala"]
            
            if @item.save
                redirect_to student_url(@item.id)
            else
                render "new"
            end
        end
        
    #DESTROY
    
    def destroy
        @item = Student.find(params[:id])
        @item.destroy
        redirect_to "/students", :notice => "Student deleted."
    end
    
    def home
        render "home"
    end
    
    def homestudent
        render "homestudent"
    end
    
    def eligible
        render "eligible"
    end
    
    def attendance
        render "attendance"
    end
    
    def teachers
        render "teachers"
    end
    
    def grades
        render "grades"
    end
    
    def slh
        render "slh"
    end
    
    def events
        render "events"
    end
end