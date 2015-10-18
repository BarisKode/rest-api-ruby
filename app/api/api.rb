class API < Grape::API
  prefix 'api'
  version 'v1', using: :path
  mount Employee::Data
  # mount Musics::Data
end