define division_limit 6

define chemical V
define chemical U

// -------- prepattern

use seed 1

use chemical U conc 4 dev 2 diff 0.15
use chemical V conc 4 dev 2 diff 0.01

create hex_circle 45

// -------- rules

rule always react U V scale 0.01 turing alpha 16 beta 12

rule from 2000 until 15000 probability 0.0001 divide direction 0 dev 180

stop at 15000

zoom level 1.303

