
document.addEventListener( 'DOMContentLoaded', function () {
    new Splide( '.splide', {
          rewind    : true,
          pagination: true,
          type   : 'loop',
          drag: true,
          focus      : 'center',
    } ).mount();
  } );
  
  


  document.addEventListener( 'DOMContentLoaded', function () {
      new Splide( '.carousell', {
            rewind    : true,
            pagination: true,
            type   : 'loop',
            drag: true,
            // focus      : 'center',
            perPage    : 3,
            autoplay : true,
            gap : 10,
		breakpoints: {
			640: {
				perPage: 1,
			}
            },
      } ).mount();
    } ); 