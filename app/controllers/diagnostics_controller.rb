class DiagnosticsController < ApplicationController
  
  def index
    @diagnostics = current_user.diagnostics
  end
  
  def new
    @diagnostic = Diagnostic.new
  end
  
  def create
    @diagnostic = Diagnostic.new(diagnostic_params)
    @diagnostic.user = current_user
    if @diagnostic.save
      redirect_to diagnostic_path(@diagnostic)
    else
      render :new
    end
  end
  
  def show
    @diagnostic = Diagnostic.find(params[:id])
  end
  
  def diagnostic_params
    params.require(:diagnostic).permit(:description, :tags, :photo)
  end
end
