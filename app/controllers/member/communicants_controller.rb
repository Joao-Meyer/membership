class Member::CommunicantsController < ApplicationController
  before_action :set_member_communicant, only: %i[ show edit update destroy ]

  # GET /member/communicants or /member/communicants.json
  def index
    @member_communicants = Member::Communicant.all
  end

  # GET /member/communicants/1 or /member/communicants/1.json
  def show
  end

  # GET /member/communicants/new
  def new
    @member_communicant = Member::Communicant.new
  end

  # GET /member/communicants/1/edit
  def edit
  end

  # POST /member/communicants or /member/communicants.json
  def create
    @member_communicant = Member::Communicant.new(member_communicant_params)

    respond_to do |format|
      if @member_communicant.save
        format.html { redirect_to @member_communicant, notice: "Communicant was successfully created." }
        format.json { render :show, status: :created, location: @member_communicant }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @member_communicant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /member/communicants/1 or /member/communicants/1.json
  def update
    respond_to do |format|
      if @member_communicant.update(member_communicant_params)
        format.html { redirect_to @member_communicant, notice: "Communicant was successfully updated." }
        format.json { render :show, status: :ok, location: @member_communicant }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @member_communicant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /member/communicants/1 or /member/communicants/1.json
  def destroy
    @member_communicant.destroy!

    respond_to do |format|
      format.html { redirect_to member_communicants_path, status: :see_other, notice: "Communicant was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member_communicant
      @member_communicant = Member::Communicant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def member_communicant_params
      params.require(:member_communicant).permit(:profession, :marital_status, :marital_partner, :partner_religious_confession, :admitted_by)
    end
end
