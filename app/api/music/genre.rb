module Music
  class Genre < Grape::API

    resource :genre do

      ## Show list of genre
      desc 'List all Genre'
      get do
        TblGenre.all
      end

      ## Create genre
      desc 'Create a genre'
      params do
        requires :name, type: String
      end

      post do
        TblGenre.create!({ name: params[:name] })
      end

      ## Update genre
      desc 'Update a genre name'
      params do
        requires :id, type: String
        requires :name, type: String
      end

      put ':id' do
        TblGenre.find(params[:id]).update({ name: params[:name] })
      end

      ## Destroy a genre
      desc 'Delete a music'
      params do
        requires :id, type: String
      end

      delete ':id' do
        TblGenre.find(params[:id]).destroy!
      end

    end
  end
end
