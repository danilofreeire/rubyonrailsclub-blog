# frozen_string_literal: true

module Administrate
  class AuthorsController < AdministrateController
    before_action :set_author, only: [:show, :edit, :update, :destroy, :destroy_avatar_image]
    def index
      @authors = Author.all
    end

    # GET /authors/1 or /authors/1.json
    def show
    end

    # GET /authors/new
    def new
      @author = Author.new
    end

    # GET /authors/1/edit
    def edit
    end

    # POST /authors or /authors.json
    def create
      @author = Author.new(author_params)
      @author.avatar_image.attach(author_params[:avatar_image])    
      respond_to do |format|
        if @author.save
          format.html { redirect_to(administrate_author_url(@author), notice: "Autor criada com sucesso!") }
          format.json { render(:show, status: :created, location: @author) }
        else
          format.html { render(:new, status: :unprocessable_entity) }
          format.json { render(json: @author.errors, status: :unprocessable_entity) }
        end
      end
    end

    # PATCH/PUT /Authors/1 or /Authors/1.json
    def update
      respond_to do |format|
        if @author.update(author_params)
          format.html { redirect_to(administrate_author_url(@author), notice: "Autor atualizado com sucesso!") }
          format.json { render(:show, status: :ok, location: @author) }
        else
          format.html { render(:edit, status: :unprocessable_entity) }
          format.json { render(json: @author.errors, status: :unprocessable_entity) }
        end
      end
    end

    # DELETE /Authors/1 or /Authors/1.json
    def destroy
      respond_to do |format|
        format.html do
          if @author.articles.count > 0
            redirect_to(
              administrate_authors_url,
              alert: "Existem Artigos associados a esse Autor. Não é possível apagá-lo.",
            )
          else
            @author.destroy!
            redirect_to(administrate_authors_url, notice: "Autor apagada com sucesso!")
          end
        end
        format.json { head(:no_content) }
      end
    end

    def destroy_avatar_image
      @author.avatar_image.purge

      respond_to do |format|
        format.turbo_stream { render(turbo_stream: turbo_stream.remove(@author)) }
      end
    end

    private

    def set_author
      @author = Author.find(params[:id])
    end

    def author_params
      params.require(:author).permit(
        :name,
        :description,
        :facebook_profile_url,
        :instagram_profile_url,
        :twitter_profile_url,
        :linkedin_profile_url,
        :youtube_profile_url,
        :avatar_image,
      )
    end
  end
end
