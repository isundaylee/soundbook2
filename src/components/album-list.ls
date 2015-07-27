{create-element} = React
{div, a, span, p, img} = React.DOM
{flatten, compact} = require 'prelude-ls'

css-transition-group = React.addons.CSSTransitionGroup

album-list = React.create-class do
  getInitialState: ->
    albums: []
    active_album: void

  componentDidMount: ->
    $.get @props.url, ~>
      @setState {albums: it}

  clickHandlerForKey: (key) ->
    ~>
      @setState {active_album_key: if @state.active_album_key then void else key}
      it.preventDefault()

  render: ->
    div {class-name: 'album-list'},
      create-element css-transition-group, {transitionName: 'album-list-transition', transitionAppear: true},
        flatten @state.albums.map ~>
          compact [
            unless (@state.active_album_key && @state.active_album_key != it.id)
              create-element album, do
                album: it
                key: it.id
                onClick: @clickHandlerForKey(it.id)
                active: @state.active_album_key == it.id
            create-element song-list, {url: it.songs_url, key: 'active'} if it.id == @state.active_album_key
          ]

