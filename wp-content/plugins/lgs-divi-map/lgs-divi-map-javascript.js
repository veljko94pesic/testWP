(function($){
    window.et_pb_init_modules2 = function() {
        $(document).ready( function(){
            var et_is_mobile_device = navigator.userAgent.match( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/ ) !== null;
            var $et_pb_mapa    = $( '.et_pb_mapa_container' );
            var is_frontend_builder = $('body').hasClass('et-fb');



            if ( $et_pb_mapa.length || is_frontend_builder ) {
                function et_pb_init_mapas() {
                    $et_pb_mapa.each(function(){
                        et_pb_mapa_init( $(this) );
                    });
                }

                window.et_pb_mapa_init = function( $this_map_container ) {
                    if (typeof google === 'undefined') {
                        return;
                    }

                    var $this_map = $this_map_container.children('.et_pb_mapa'),
                        // this_map_grayscale = $this_map_container.attr( 'data-grayscale' ) || 0,
                        is_draggable = ( et_is_mobile_device && $this_map.data('mobile-dragging') !== 'off' ) || ! et_is_mobile_device,
                        infowindow_active;

                    // if ( this_map_grayscale !== 0 ) {
                    //     this_map_grayscale = '-' + this_map_grayscale.toString();
                    // }

                    $this_map_container.data('map', new google.maps.Map( $this_map[0], {
                        zoom: parseInt( $this_map.attr('data-zoom') ),
                        center: new google.maps.LatLng( parseFloat( $this_map.attr('data-center-lat') ) , parseFloat( $this_map.attr('data-center-lng') )),
                        mapTypeId: google.maps.MapTypeId.ROADMAP,
                        scrollwheel: $this_map.attr('data-mouse-wheel') == 'on' ? true : false,
                        draggable: is_draggable,
                        panControlOptions: {
                            position: $this_map_container.is( '.et_beneath_transparent_nav' ) ? google.maps.ControlPosition.LEFT_BOTTOM : google.maps.ControlPosition.LEFT_TOP
                        },
                        zoomControlOptions: {
                            position: $this_map_container.is( '.et_beneath_transparent_nav' ) ? google.maps.ControlPosition.LEFT_BOTTOM : google.maps.ControlPosition.LEFT_TOP
                        },
                        styles: JSON.parse($this_map.attr('my_styles_amount'))
                    }));

                    $this_map_container.find('.et_pb_map_pin').each(function(){
                        var $this_marker = $(this);

                        var marker = new google.maps.Marker({
                            position: new google.maps.LatLng( parseFloat( $this_marker.attr('data-lat') ) , parseFloat( $this_marker.attr('data-lng') ) ),
                            map: $this_map_container.data('map'),
                            title: $this_marker.attr('data-title'),
                            icon: { url: et_pb_custom.builder_images_uri + '/marker.png', size: new google.maps.Size( 46, 43 ), anchor: new google.maps.Point( 16, 43 ) },
                            shape: { coord: [1, 1, 46, 43], type: 'rect' },
                            anchorPoint: new google.maps.Point(0, -45)
                        });

                        if ( $this_marker.find('.infowindow').length ) {
                            var infowindow = new google.maps.InfoWindow({
                                content: $this_marker.html()
                            });

                            google.maps.event.addListener( $this_map_container.data('map'), 'click', function() {
                                infowindow.close();
                            });

                            google.maps.event.addListener(marker, 'click', function() {
                                if( infowindow_active ) {
                                    infowindow_active.close();
                                }
                                infowindow_active = infowindow;

                                infowindow.open( $this_map_container.data('map'), marker );
                            });
                        }
                    });
                }

                if ( window.et_load_event_fired ) {
                    et_pb_init_mapas();
                } else {
                    if ( typeof google !== 'undefined' ) {
                        google.maps.event.addDomListener(window, 'load', function() {
                            et_pb_init_mapas();
                        } );
                    }
                }
            }
        });
    };

    window.et_pb_init_modules2();
})(jQuery)