Album = React.createClass
  render: ->
    <a href="#">
      <div className='album'>
        <div>
          <img src={this.props.album.cover_url} />
          <div className='title-line'>
            <span className='title'>{this.props.album.title}</span>
            <span className='years'>{this.props.album.years}</span>
            <p className='description'>{this.props.album.description}</p>
          </div>
        </div>
      </div>
    </a>
