{div, a, span, p, img} = React.DOM

song = React.create-class do
  render: ->
    a {href: '#'},
      div {class-name: 'song'},
        div null,
          div null,
            span {class-name: 'title'},
              @props.song.title
            span {class-name: 'language'},
              'english'
            p {class-name: 'description'},
              head lines @props.song.description
