// moray eel (muraena melanotis)

define chemical U limit 6.5
define chemical V limit 6.5
define chemical P

define time_step 0.3

// -------- prepattern

use seed 1

use chemical U conc 4 dev 2 diff 0.05
use chemical V conc 4 dev 2 diff 0.01
use chemical P conc 0       diff 0.01

create sqr_grid 200 100

set cells     0 to  4999 chemical U diff 0.40
set cells  5000 to  5399 chemical U diff 0.20

set cells 19000 to 19199 chemical U diff 0.20
set cells 19200 to 19999 chemical U diff 0.40

set cell 10240 chemical P conc 8
set cell 10850 chemical P conc 8

// -------- rules

rule always react U V scale 0.03 turing alpha 16 beta 12

rule from 2500 until 2000 always change P diff -0.01 // stops gradient
rule if P conc > 0.01 change V conc +1.0 // cells affected by gradient

colormap select gradient
colormap slot 25 use color "30292d"
colormap slot 30 use color "e8e336"
colormap slot 40 use color "white"

stop at 5000

texture size 800 400

