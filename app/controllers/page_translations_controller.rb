class PageTranslationsController < ApplicationController
  before_action :set_page_translation, only: [:show, :edit, :update, :destroy]

  # GET /page_translations
  # GET /page_translations.json
  def index
    @page_translations = PageTranslation.all
  end

  # GET /page_translations/1
  # GET /page_translations/1.json
  def show
  end

  # GET /page_translations/new
  def new
    @page_translation = PageTranslation.new
  end

  # GET /page_translations/1/edit
  def edit
  end

  # POST /page_translations
  # POST /page_translations.json
  def create
    @page_translation = PageTranslation.new(page_translation_params)

    respond_to do |format|
      if @page_translation.save
        format.html { redirect_to @page_translation, notice: 'Page translation was successfully created.' }
        format.json { render :show, status: :created, location: @page_translation }
      else
        format.html { render :new }
        format.json { render json: @page_translation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /page_translations/1
  # PATCH/PUT /page_translations/1.json
  def update
    respond_to do |format|
      if @page_translation.update(page_translation_params)
        format.html { redirect_to @page_translation, notice: 'Page translation was successfully updated.' }
        format.json { render :show, status: :ok, location: @page_translation }
      else
        format.html { render :edit }
        format.json { render json: @page_translation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /page_translations/1
  # DELETE /page_translations/1.json
  def destroy
    @page_translation.destroy
    respond_to do |format|
      format.html { redirect_to page_translations_url, notice: 'Page translation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page_translation
      @page_translation = PageTranslation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def page_translation_params
      params.fetch(:page_translation, {})
    end
end
