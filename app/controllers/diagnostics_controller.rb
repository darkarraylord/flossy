class DiagnosticsController < ApplicationController
  
  def index
    @diagnostics = current_user.diagnostics
  end
  
  def new
    @diagnostic = Diagnostic.new
  end
  
  def show
    @diagnostic = Diagnostic.find(params[:id])
  end
  
  
end
