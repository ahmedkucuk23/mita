class ContactsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index , :show, :new, :create]

  
  # GET /contacts or /contacts.json
  def index
    @contacts = Contact.all
    authorize @contact

  end

  # GET /contacts/1 or /contacts/1.json
  def show
  end

  # GET /contacts/new
  def new

    @contact = Contact.new
    authorize @contact

  end

  # GET /contacts/1/edit
  def edit
  end

  # POST /contacts or /contacts.json
  def create
    @contact = Contact.new(contact_params)
    authorize @contact

    respond_to do |format|
      if @contact.save && verify_recaptcha(:model => @contact, :notice => "Oh! It's error with reCAPTCHA!")
        ContactSubmissionMailer.with(contact: @contact).welcome_email.deliver_now
        format.html { redirect_to contacts_url(@contact), notice: "Your message was successfully delivered." }
        format.json { render :show, status: :created, location: @contact }
      else
        redirect_to @contact
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contacts/1 or /contacts/1.json
  def update
    respond_to do |format|
      if @contact.update(contact_params)
        format.html { redirect_to contact_url(@contact), notice: "Contact was successfully updated." }
        format.json { render :show, status: :ok, location: @contact }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contacts/1 or /contacts/1.json
  def destroy
    @contact.destroy

    respond_to do |format|
      format.html { redirect_to contacts_url, notice: "Contact was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.friendly.find(params[:id])
      authorize @contact
    end

    # Only allow a list of trusted parameters through.
    def contact_params
      params.require(:contact).permit(:name, :business, :surname, :email, :website, :message, :budget)
    end
end
