#\ -w -p 8765 -o 0.0.0.0

require 'sinatra/base'

require './main'
require './song'


map('/songs') { run SongController }
map('/') { run Website }
