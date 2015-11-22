module Main where

import           Lib

-- pitch class
data X = X0 | X1 | X2 | X3 | X4 | X5 | X6 | X7 | X8 | X9 | X10 | X11

data SetX = SetX [X]

setX :: SetX
setX = SetX [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11]

-- pitch class names
-- data C = CSS | CSSlashDb | DSS | DSSlashEb | ESS | FSS | FSSlashGb
--        | GSS | GSSlashAb | ASS | ASSlashBb | BSS
-- Note: CSSlashDb means C#/Db

-- data SetC = SetC [C]

-- setC :: SetC
-- setC = SetC [CSS, CSSlashDb, DSS, DSSlashEb, ESS, FSS, FSSlashGb,
--              GSS, GSSlashAb, ASS, ASSlashBb, BSS]

-- p :: C -> X
-- p CSS       = X0
-- p CSSlashDb = X1
-- p DSS       = X2
-- p DSSlashEb = X3
-- p ESS       = X4
-- p FSS       = X5
-- p FSSlashGb = X6
-- p GSS       = X7
-- p GSSlashAb = X8
-- p ASS       = X9
-- p ASSlashBb = X10
-- p BSS       = X11
-- Note: not as basic as possible

data Z = CSS | CS | Db | DSS | DS | Eb | ESS | FSS | FS | Gb
       | GSS | GS | Ab | ASS | AS | Bb | BSS

data SetZ = SetZ [Z]

setZ :: SetZ
setZ = SetZ [CSS, CS, Db, DSS, DS, Eb, ESS, FSS, FS, Gb,
             GSS, GS, Ab, ASS, AS, Bb, BSS]

n :: Z -> X
n CSS = X0
n CS  = X1
n Db  = X1
n DSS = X2
n DS  = X3
n Eb  = X3
n ESS = X4
n FSS = X5
n FS  = X6
n Gb  = X6
n GSS = X7
n GS  = X8
n Ab  = X8
n ASS = X9
n AS  = X10
n Bb  = X10
n BSS = X11

main :: IO ()
main = someFunc
