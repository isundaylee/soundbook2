{div, a, span, p, img} = React.DOM
{compact, join} = require 'prelude-ls'

album = React.create-class do
  handleClick: ->
    @props.on-click(it)

  render: ->
    div null,
      a {class-name: 'album-link', href: '#', onClick: @handleClick},
        div {class-name: join ' ' compact ['album', 'active' if @props.active]},
          div null,
            img {src: @props.album.cover_url},
              div {class-name: 'title-line'},
                span {class-name: 'title'},
                  @props.album.title
                span {class-name: 'years'},
                  @props.album.years
                p {class-name: 'description'},
                  @props.album.description
