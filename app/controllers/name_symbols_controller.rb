class NameSymbolsController < ApplicationController
  before_action :set_name_symbol, only: %i[ show edit update destroy ]

  # GET /name_symbols or /name_symbols.json
  def index
    @name_symbols = NameSymbol.all
  end

  # GET /name_symbols/1 or /name_symbols/1.json
  def show
  end

  # GET /name_symbols/new
  def new
    @name_symbol = NameSymbol.new
  end

  # GET /name_symbols/1/edit
  def edit
  end

  # POST /name_symbols or /name_symbols.json
  def create
    @name_symbol = NameSymbol.new(name_symbol_params)

    respond_to do |format|
      if @name_symbol.save
        format.html { redirect_to name_symbol_url(@name_symbol), notice: "Name symbol was successfully created." }
        format.json { render :show, status: :created, location: @name_symbol }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @name_symbol.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /name_symbols/1 or /name_symbols/1.json
  def update
    respond_to do |format|
      if @name_symbol.update(name_symbol_params)
        format.html { redirect_to name_symbol_url(@name_symbol), notice: "Name symbol was successfully updated." }
        format.json { render :show, status: :ok, location: @name_symbol }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @name_symbol.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /name_symbols/1 or /name_symbols/1.json
  def destroy
    @name_symbol.destroy!

    respond_to do |format|
      format.html { redirect_to name_symbols_url, notice: "Name symbol was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_name_symbol
      @name_symbol = NameSymbol.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def name_symbol_params
      params.require(:name_symbol).permit(:name_of_element, :symbo_of_element)
    end
end
