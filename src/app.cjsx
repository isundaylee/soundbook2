albums = [
  {
    id: 1,
    cover_url: 'http://s3.amazonaws.com/soundbook/albums/covers/000/000/003/medium/a.jpg?1397609298',
    title: 'The Key Covers',
    years: '2013-2015',
    description: 'Lorem ipsum dolor sit amet, dicit reprehendunt cu vis.  Eis gimon sensibus persequeris ei, et neglegentur liberavisse comprehensam quo. Ex pri vide clita, no has mentitum gubergren assueverit, in dicat putent fuisset eum. Eam dignissim adversarium an, splendide deseruisse ex qui.'
  },
  {
    id: 2,
    cover_url: 'http://s3.amazonaws.com/soundbook/albums/covers/000/000/005/medium/Jiahao_Li_Demos.png?1430689055',
    title: 'Jiahao\'s Demos',
    years: '2013-2015',
    description: 'Lorem ipsum dolor sit amet, dicit reprehendunt cu vis.  Eis gimon sensibus persequeris ei, et neglegentur liberavisse comprehensam quo. Ex pri vide clita, no has mentitum gubergren assueverit, in dicat putent fuisset eum. Eam dignissim adversarium an, splendide deseruisse ex qui.'
  },
  {
    id: 3,
    cover_url: 'http://s3.amazonaws.com/soundbook/albums/covers/000/000/001/medium/Cover.png?1397608522',
    title: 'Songs for You',
    years: '2013-2015',
    description: 'Lorem ipsum dolor sit amet, dicit reprehendunt cu vis.  Eis gimon sensibus persequeris ei, et neglegentur liberavisse comprehensam quo. Ex pri vide clita, no has mentitum gubergren assueverit, in dicat putent fuisset eum. Eam dignissim adversarium an, splendide deseruisse ex qui.'
  },
  {
    id: 4,
    cover_url: 'http://s3.amazonaws.com/soundbook/albums/covers/000/000/006/medium/IMG_7264.JPG?1425526999',
    title: 'Instrumentals',
    years: '2013-2015',
    description: 'Lorem ipsum dolor sit amet, dicit reprehendunt cu vis.  Eis gimon sensibus persequeris ei, et neglegentur liberavisse comprehensam quo. Ex pri vide clita, no has mentitum gubergren assueverit, in dicat putent fuisset eum. Eam dignissim adversarium an, splendide deseruisse ex qui.'
  },
  {
    id: 5,
    cover_url: 'http://s3.amazonaws.com/soundbook/albums/covers/000/000/002/medium/Covers.png?1397608562',
    title: 'Covers',
    years: '2013-2015',
    description: 'Lorem ipsum dolor sit amet, dicit reprehendunt cu vis.  Eis gimon sensibus persequeris ei, et neglegentur liberavisse comprehensam quo. Ex pri vide clita, no has mentitum gubergren assueverit, in dicat putent fuisset eum. Eam dignissim adversarium an, splendide deseruisse ex qui.'
  },
]

React.render <AlbumList albums={albums} />, document.getElementById('reactContainer')