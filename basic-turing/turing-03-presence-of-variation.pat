// test effects on concentration variation
// -> variation on just one chemical is enough to generate patterns

define chemical U
define chemical V

// -------- prepattern

use seed 1
use chemical U    conc 4 dev 0.1    diff 0.0225 dev 0
use chemical V    conc 4 dev 0.1    diff 0.001  dev 0

create sqr_grid 30 30 at -35 35

use seed 1
use chemical U    conc 4 dev 0.0    diff 0.0225 dev 0
use chemical V    conc 4 dev 0.1    diff 0.001  dev 0

create sqr_grid 30 30 at 35 35

use seed 1
use chemical U    conc 4 dev 0.1    diff 0.0225 dev 0
use chemical V    conc 4 dev 0.0    diff 0.001  dev 0

create sqr_grid 30 30 at -35 -35

use seed 1
use chemical U    conc 4 dev 0.0    diff 0.0225 dev 0
use chemical V    conc 4 dev 0.0    diff 0.001  dev 0

create sqr_grid 30 30 at 35 -35

rule always react U V scale 0.004 turing alpha 16 beta 12

