class ProjectsController < ApplicationController

  before_filter :authenticate_user!

  def index
    @projects = current_user.projects
  end

  def show
  @project = Project.find(params[:id])
  end

  def create
  end

  def destroy
  end

  def edit
  end

  def new
  end
  def update
  end

	def user_info
		@user = current_user
	end
	
	def developer
		@user = current_user
	  @project = Project.all
	  @test = Github.new :login => 'revol-tech', :password => 'bhaktapur11'
	end
	
	def message_display
		@message = Message.all()
	end
end
