//
// scrResetHighscores(type)
//
// Reset highscores.
//

/**********************************************************************************
    Copyright (c) 2008, 2009 Derek Yu and Mossmouth, LLC
    
    This file is part of Spelunky.

    You can redistribute and/or modify Spelunky, including its source code, under
    the terms of the Spelunky User License.

    Spelunky is distributed in the hope that it will be entertaining and useful,
    but WITHOUT WARRANTY.  Please see the Spelunky User License for more details.

    The Spelunky User License should be available in "Game Information", which
    can be found in the Resource Explorer, or as an external file called COPYING.
    If not, please obtain a new copy of Spelunky from <http://spelunkyworld.com/>
    
***********************************************************************************/

highscore_clear();
highscore_add("MONEY", 9000000);
highscore_add("TIME", 8000000);
highscore_add("KILLS", 7000000);
highscore_add("SAVES", 6000000);
highscore_add("PLAYS", 5000000);
highscore_add("WINS", 4000000);
highscore_add("DEATHS", 3000000);
highscore_add("TUNNEL1", 2000000+global.tunnel1Max+1);
highscore_add("TUNNEL2", 1000000+global.tunnel2Max+1);
highscore_add("MINIGAMES", 0);
global.tunnel1 = highscore_value(8) - 2000000;
global.tunnel2 = highscore_value(9) - 1000000;
