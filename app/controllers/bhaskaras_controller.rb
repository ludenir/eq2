class BhaskarasController < ApplicationController
  before_action :set_bhaskara, only: [:show, :edit, :update]

  def edit
  end

  def update
    respond_to do |format|
      @bhaskara.update(bhaskara_params)
      format.html { render :edit }
      #  Do jeito, abaixo, também funciona ...
      #  format.html { redirect_to action: "edit" }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bhaskara
      @bhaskara = Bhaskara.find(1)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bhaskara_params
      params.require(:bhaskara).permit(:a, :b, :c)
    end
end