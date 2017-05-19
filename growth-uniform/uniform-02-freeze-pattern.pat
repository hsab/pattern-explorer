// standard turing pattern + freeze + growth
// -> division introduces much noise and pattern degrades

define division_limit 6

define chemical V
define chemical U

// -------- prepattern

use seed 1

use chemical U conc 4 dev 2 diff 0.15
use chemical V conc 4 dev 2 diff 0.01

create hex_circle 45

// -------- rules

rule until 1998 always react U V scale 0.01 turing alpha 16 beta 12

rule from 1999 until 1999 always change V diff -0.01 // stop diffusion

rule from 2000 until 15000 probability 0.0001 divide direction 0 dev 180

//snap from 1000 repeat 15 step 1000

zoom level 1.303
