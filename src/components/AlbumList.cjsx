AlbumList = React.createClass
  getDefaultProps: ->
    albums: []

  render: ->
    albums = this.props.albums.map (album) ->
      <Album album={album} key={album.id}/>

    <div className='album-list'>
      {albums}
    </div>
