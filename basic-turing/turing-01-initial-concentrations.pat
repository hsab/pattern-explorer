// test distinct initial concentrations
// -> very similar patterns
// -> distinct time to stabilize

define chemical U
define chemical V

// -------- prepattern

use seed 1
use chemical U    conc 4 dev 0.1    diff 0.0225 dev 0
use chemical V    conc 4 dev 0.1    diff 0.001  dev 0

create sqr_grid 30 30 at -35 35

use seed 1
use chemical U    conc 5 dev 0.1    diff 0.0225 dev 0
use chemical V    conc 5 dev 0.1    diff 0.001  dev 0

create sqr_grid 30 30 at 35 35

use seed 1
use chemical U    conc 6 dev 0.1    diff 0.0225 dev 0
use chemical V    conc 6 dev 0.1    diff 0.001  dev 0

create sqr_grid 30 30 at -35 -35

use seed 1
use chemical U    conc 7 dev 0.1    diff 0.0225 dev 0
use chemical V    conc 7 dev 0.1    diff 0.001  dev 0

create sqr_grid 30 30 at 35 -35

rule always react U V scale 0.004 turing alpha 16 beta 12

