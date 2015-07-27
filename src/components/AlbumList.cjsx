AlbumList = React.createClass
  getInitialState: ->
    {albums: []}

  componentDidMount: ->
    $.get @props.url, (data) =>
      @setState
        albums: data

  handleClick: (e) ->
    alert 'Handler is working! '
    e.preventDefault()

  render: ->
    albums = @state.albums.map (album) =>
      <Album album={album} key={album.id} onClick={@handleClick} />

    <div className='album-list'>
      {albums}
    </div>
