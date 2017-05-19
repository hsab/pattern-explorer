// production of U after defining spots: kills some already stablished spots 

define chemical U
define chemical V

// -------- prepattern

use seed 1

use chemical U conc 4 dev 2 diff 0.04
use chemical V conc 4 dev 2 diff 0.01

create sqr_grid 50 50

// -------- rules

rule always react U V scale 0.01 turing alpha 16 beta 12

rule from 2000 if U conc > 0.6 change U conc +0.01
//rule from 2000 if U conc > 0.7 change U conc +0.01
