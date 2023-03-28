class ChecklistsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index , :show, :new, :create]

  # GET /checklists or /checklists.json
  def index
    @checklists = Checklist.all
    authorize @checklist
  end

  # GET /checklists/1 or /checklists/1.json
  def show
  end

  # GET /checklists/new
  def new
    @checklist = Checklist.new
    authorize @checklist
  end

  # GET /checklists/1/edit
  def edit
  end

  # POST /checklists or /checklists.json
  def create
    @checklist = Checklist.new(checklist_params)
    authorize @checklist

    respond_to do |format|
      if @checklist.save && verify_recaptcha(:model => @checklist )
        FormChecklistMailer.with(checklist: @checklist).welcome_email.deliver_now
        format.html { redirect_to "https://mita.a2hosted.com/checklist/" }
        format.json { render :show, status: :created, location: @checklist }
      else
        redirect_to checklists_path
        format.json { render json: @checklist.errors, status: :unprocessable_entity }
      end
    end
  end


  # PATCH/PUT /checklists/1 or /checklists/1.json
  def update
    respond_to do |format|
      if @checklist.update(checklist_params)
        format.html { redirect_to checklist_url(@checklist), notice: "Checklist was successfully updated." }
        format.json { render :show, status: :ok, location: @checklist }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @checklist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /checklists/1 or /checklists/1.json
  def destroy
    @checklist.destroy

    respond_to do |format|
      format.html { redirect_to checklists_url, notice: "Checklist was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_checklist
      @checklist = Checklist.find(params[:id])
      authorize @checklist
    end

    # Only allow a list of trusted parameters through.
    def checklist_params
      params.require(:checklist).permit(:email, :number)
    end
end
