class API < Grape::API
  prefix 'api'
  format :json
  version 'v1', using: :path

  # handle employee
  namespace 'office/employee' do
    # route: http://localhost:3000/api/v1/office/employee/list
    mount Employee::Data

  end

  # handle music
  namespace :music do
    mount Music::List # http://localhost:3000/api/v1/music/list
    mount Music::Album # http://localhost:3000/api/v1/music/album
    mount Music::Genre # http://localhost:3000/api/v1/music/genre
  end

end