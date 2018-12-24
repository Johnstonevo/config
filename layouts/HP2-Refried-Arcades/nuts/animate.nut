class Animate {
    width = null
    height = null
    from = null
    to = null
    overshot = null
    delay = null
    smoothing = null
    hidePos = null
    autohide = null
    timeold = null
    object = null
    property = null
    running = null

    constructor ( _object, _property, _overshot, _delay, _smoothing ) {
        object = _object
        property = _property
        width = object.width
        height = object.height
        overshot = _overshot
        delay = _delay
        smoothing = _smoothing
        autohide = false
        running = false
		timeold = 0
        ::fe.add_ticks_callback( this, "tick" )
        switch ( property ) {
            case "x":
                from = _object.x
                to = _object.x
                break
            case "y":
                from = _object.y
                to = _object.y
                break
            case "width":
                from = _object.width
                to = _object.width
                break
            case "height":
                from = _object.height
                to = _object.height
                break
            case "scale":
                from = 1
                to = 1
                break
            case "scale_y":
                from = 1
                to = 1
                break
            case "alpha":
                from = _object.alpha
                to = _object.alpha
                break
            case "bg_alpha":
                from = _object.bg_alpha
                to = _object.bg_alpha
                break
            case "listbox_alpha":
                from = _object.bg_alpha
                to = _object.bg_alpha
                break
        }   
    }

    function hide( _hidePos, _ttime ) {
        autohide = true
		timeold = _ttime
        hidePos = _hidePos
    }
    
    function go( _ttime ) {
        if ( from != to )
        if ( from > to ) {
            from = from * smoothing + ( to - overshot )  * ( 1 - smoothing )
            if ( from < to )
                from = to
        }
        else if ( from < to ) {
            from = from * smoothing + ( to + overshot )  * ( 1 - smoothing )
            if ( from > to )
                from = to
        }
        
        if ( autohide ) {
            if( _ttime - timeold < delay ) {
				;
            }
            else {
                to = hidePos
                autohide = false
            }
        }
        return from
    }
    
    function tick( _ttime ) {
        if ( from != to || autohide == true) {
            running = true
            switch (property) {
                case "x":
                    object.x = go( _ttime )
                    break
                case "y":
                    object.y = go( _ttime )
                    break
                case "width":
                    object.width = go( _ttime )
                    break
                case "height":
                    object.height = go( _ttime )
                    break
                case "scale":
                    local scale = go( _ttime )
                    object.width = width * scale
                    object.height = height * scale
                    object.origin_x = ( width * scale - width ) / 2
                    object.origin_y = ( height * scale - height ) / 2
                    break
                case "scale_y":
                    local scale = go( _ttime )
                    object.height = height * scale
                    object.origin_y = ( height * scale - height ) / 2
                    break
                case "alpha":
					object.alpha = go( _ttime )
                    break
                case "bg_alpha":
					object.bg_alpha = go( _ttime )
                    break
                case "listbox_alpha":
                    object.alpha = go( _ttime )
                    //object.bg_alpha = object.alpha
                    object.sel_alpha = object.alpha
                    object.selbg_alpha = object.alpha
                    break
            }
        } else running = false
    }
}