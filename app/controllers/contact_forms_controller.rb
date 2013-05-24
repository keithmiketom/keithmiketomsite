class ContactFormsController < ApplicationController
  # GET /contact_forms
  # GET /contact_forms.json
    def index 
      @title = "Contact Me" 
    end
    
    def new
      @contact_form = ContactForm.new
      @title = "Contact Me"
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @contact_form }
      end
    end

    def create
      @contact_form = ContactForm.new(params[:contact_form])
      @contact_form.request = request
      @title = "Contact Me"
     
      respond_to do |format|
        if @contact_form.deliver
          format.html { redirect_to contact_forms_url, notice: 'Thank you for your message!' }
          format.json { render json: [], status: :created }
        else
          format.html { render action: "new" }
          format.json { render json: @contact_form.errors, status: :unprocessable_entity }
        end
      end
      
      rescue ScriptError
        redirect_to contact_forms_url, notice: 'Sorry, this message appears to be spam and was not delivered.'
    end
end