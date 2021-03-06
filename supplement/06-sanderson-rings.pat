define chemical V
define chemical U anisotropic
define chemical P
define chemical G

// -------- prepattern

use chemical U conc 4 dev 1 diff 0.03
use chemical V conc 4 dev 1 diff 0.00625
use chemical P conc 0       diff 0
use chemical G conc 0       diff 0.05

create hex_grid 100 100

set cell 5050 chemical P conc 1

// -------- rules

rule if P conc >= 1 change G conc  4
rule if P conc <  1 change G conc -0.001

rule always polarize G conc

rule from 3000 always react U V scale 0.006 turing alpha 16 beta 12

colormap select gradient
colormap slot 40 use color "0ee1da"
colormap slot 80 use color "80763e"

stop at 18000

