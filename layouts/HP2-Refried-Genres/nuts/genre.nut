class GenreImage {
    mode = 1;       //0 = first match, 1 = last match, 2 = random
    supported = {
        //filename : [ match1, match2 ]
        "act": [ "action","platformer", "platform" ],
        "avg": [ "adventure" ],
        "ftg": [ "fighting", "fighter", "beat'em up" ],
        "pzg": [ "puzzle" ],
        "rcg": [ "racing", "driving" ],
        "rpg": [ "rpg", "role playing", "role-playing", "role playing game" ],
        "stg": [ "shooter", "shmup" ],
        "spt": [ "sports", "boxing", "golf", "baseball", "football", "soccer" ],
        "slg": [ "strategy"]
    }

    ref = null;
    constructor( image )
    {
        ref = image;
        fe.add_transition_callback( this, "transition" );
    }
   
    function transition( ttype, var, ttime )
    {
        if ( ttype == Transition.ToNewSelection || ttype == Transition.ToNewList )
        {
            local cat = " " + fe.game_info(Info.Category, var).tolower();
            local matches = [];
            foreach( key, val in supported )
            {
                foreach( nickname in val )
                {
                    if ( cat.find(nickname, 0) ) matches.push(key);
                }
            }
            if ( matches.len() > 0 )
            {
                switch( mode )
                {
                    case 0:
                        ref.file_name = "images/" + matches[0] + ".png";
                        break;
                    case 1:
                        ref.file_name = "images/" + matches[matches.len() - 1] + ".png";
                        break;
                    case 2:
                        local random_num = floor(((rand() % 1000 ) / 1000.0) * ((matches.len() - 1) - (0 - 1)) + 0);
                        ref.file_name = "images/" + matches[random_num] + ".png";
                        break;
                }
            } else
            {
                ref.file_name = "images/unknown.png";
            }
        }
    }
}