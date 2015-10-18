module Music
  class List < Grape::API

    resource :list do

      ## Show list of music
      desc 'List all music'
      get do
        TblMusic.all
      end

      ## Create a music
      desc 'Create a music'
      params do
        requires :title, type: String
        requires :artist, type: String
        requires :year, type: Integer
      end

      post do
        TblMusic.create!({
                             title:    params[:title],
                             artist:   params[:artist],
                             year:     params[:year],
                             genre_id: params[:genre_id],
                             album_id: params[:album_id]
                         })
      end

      ## Update music
      desc 'Update a music title'
      params do
        requires :id, type: String
        requires :title, type: String
      end

      put ':id' do
        TblMusic.find(params[:id]).update({ title: params[:title] })
      end

      ## Destroy a music
      desc 'Delete a music'
      params do
        requires :id, type: String
      end

      delete ':id' do
        TblMusic.find(params[:id]).destroy!
      end

    end
  end
end
