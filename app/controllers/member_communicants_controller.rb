class MemberCommunicantsController < ApplicationController
  before_action :set_member_communicant, only: %i[ show edit update destroy ]

  # GET /member_communicants or /member_communicants.json
  def index
    @member_communicants = MemberCommunicant.all
  end

  # GET /member_communicants/1 or /member_communicants/1.json
  def show
  end

  # GET /member_communicants/new
  def new
    @member_communicant = MemberCommunicant.new
  end

  # GET /member_communicants/1/edit
  def edit
  end

  # POST /member_communicants or /member_communicants.json
  def create
    @member_communicant = MemberCommunicant.new(member_communicant_params)

    respond_to do |format|
      if @member_communicant.save
        format.html { redirect_to @member_communicant, notice: "Member communicant was successfully created." }
        format.json { render :show, status: :created, location: @member_communicant }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @member_communicant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /member_communicants/1 or /member_communicants/1.json
  def update
    respond_to do |format|
      if @member_communicant.update(member_communicant_params)
        format.html { redirect_to @member_communicant, notice: "Member communicant was successfully updated." }
        format.json { render :show, status: :ok, location: @member_communicant }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @member_communicant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /member_communicants/1 or /member_communicants/1.json
  def destroy
    @member_communicant.destroy!

    respond_to do |format|
      format.html { redirect_to member_communicants_path, status: :see_other, notice: "Member communicant was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member_communicant
      @member_communicant = MemberCommunicant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def member_communicant_params
      params.require(:member_communicant).permit(:name, :surname, :address, :number, :neighborhood, :city, :zip_code, :phone, :telephone, :birth_date, :sex, :nationality, :naturality, :uf, :scholarship, :father_name, :mother_name, :book_number, :record_number, :reception_date, :minister_rev, :observation, :profession, :marital_status, :marital_partner, :partner_religious_confession, :admitted_by)
    end
end
