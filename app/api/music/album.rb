module Music
  class Album < Grape::API

    resource :album do
      ## Show list of album
      desc 'List all Album'
      get do
        TblAlbum.all
      end

      ## Create an album
      desc 'Create an album'
      params do
        requires :name, type: String
      end

      post do
        TblAlbum.create!({ name: params[:name] })
      end

      ## Update album
      desc 'Update a album name'
      params do
        requires :id, type: String
        requires :name, type: String
      end

      put ':id' do
        TblAlbum.find(params[:id]).update({ name: params[:name] })
      end

      ## Destroy a album
      desc 'Delete a album'
      params do
        requires :id, type: String
      end

      delete ':id' do
        TblAlbum.find(params[:id]).destroy!
      end

    end

  end
end
