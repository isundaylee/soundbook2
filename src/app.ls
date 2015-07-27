url = 'http://soundbook.jiahao.link/albums.json'

# album = React.create-factory album
# album-list = React.create-factory album-list

React.render do
  React.create-element album-list, do
    url: url
  $('#react_container')[0]
