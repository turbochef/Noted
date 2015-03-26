class MilestonesController < ApplicationController
	def create
		@notepad = Notepad.find(params[:notepad_id])
		@milestone = @notepad.milestones.create(milestone_params)
		redirect_to notepad_path(@notepad)
	end


	private
	def milestone_params
		params.require(:milestone).permit(:name, :due)
	end
end
