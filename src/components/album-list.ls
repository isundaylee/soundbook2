{div, a, span, p, img} = React.DOM

album-list = React.create-class do
  getInitialState: ->
    albums: []

  componentDidMount: ->
    $.get @props.url, ~>
      @setState {albums: .}

  handleClick: ->
    alert 'Handler is working! '
    it.preventDefault()

  render: ->
    div {class-name: 'album-list'},
      @state.albums.map ~>
        React.create-element album, {album: ., key: .id, onClick: @handleClick}
