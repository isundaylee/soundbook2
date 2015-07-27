Album = React.createClass
  handleClick: (e) ->
    @props.onClick(e)

  render: ->
    <a href="#" onClick={@handleClick} ref="">
      <div className='album'>
        <div>
          <img src={@props.album.cover_url} />
          <div className='title-line'>
            <span className='title'>{@props.album.title}</span>
            <span className='years'>{@props.album.years}</span>
            <p className='description'>{@props.album.description}</p>
          </div>
        </div>
      </div>
    </a>
