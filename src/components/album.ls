{div, a, span, p, img} = React.DOM

album = React.create-class do
  handleClick: ->
    @props.on-click(.)

  render: ->
    a {href: '#', onClick: @handleClick},
      div {class-name: 'album'},
        div null,
          img {src: @props.album.cover_url},
            div {class-name: 'title-line'},
              span {class-name: 'title'},
                @props.album.title
              span {class-name: 'years'},
                @props.album.years
              p {class-name: 'description'},
                @props.album.description
