// leopard rosettes

define chemical U limit 4.05
define chemical V

define division_limit 6
define domain packed
define time_step 0.1

// -------- prepattern

use seed 1

use chemical U conc 4 dev 0 diff 0.40
use chemical V conc 4 dev 0 diff 0.01

create hex_grid 50 58

set cell 205 chemical V conc 10
set cell 215 chemical V conc 10
set cell 225 chemical V conc 10
set cell 235 chemical V conc 10
set cell 245 chemical V conc 10

set cell 610 chemical V conc 10
set cell 620 chemical V conc 10
set cell 630 chemical V conc 10
set cell 640 chemical V conc 10

set cell 1005 chemical V conc 10
set cell 1015 chemical V conc 10
set cell 1025 chemical V conc 10
set cell 1035 chemical V conc 10
set cell 1045 chemical V conc 10

set cell 1410 chemical V conc 10
set cell 1420 chemical V conc 10
set cell 1430 chemical V conc 10
set cell 1440 chemical V conc 10

set cell 1805 chemical V conc 10
set cell 1815 chemical V conc 10
set cell 1825 chemical V conc 10
set cell 1835 chemical V conc 10
set cell 1845 chemical V conc 10

set cell 2210 chemical V conc 10
set cell 2220 chemical V conc 10
set cell 2230 chemical V conc 10
set cell 2240 chemical V conc 10

set cell 2605 chemical V conc 10
set cell 2615 chemical V conc 10
set cell 2625 chemical V conc 10
set cell 2635 chemical V conc 10
set cell 2645 chemical V conc 10

// -------- rules

rule always react U V scale 0.025 turing alpha 16 beta 12

rule from 4000 probability 0.0001 divide direction 0 dev 180

colormap select gradient
colormap slot 20 use color "251c12"
colormap slot 30 use color "98682d"
colormap slot 70 use color "fbc38d"
colormap slot 80 use color "f5e8a8"

stop at 14000

zoom level 1.503

