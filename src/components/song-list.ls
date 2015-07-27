{create-element} = React
{div, a, span, p, img} = React.DOM
{head, lines} = require 'prelude-ls'

song-list = React.create-class do
  getInitialState: ->
    songs: []
    active_song_key: void

  componentDidMount: ->
    $.get @props.url, ~>
      @setState {songs: it}

  render: ->
    div {class-name: 'song-list'},
      @state.songs.map ->
        create-element song, {song: it, key: it.id}

