module Main where

import           Lib

-- pitch class
data X = X0 | X1 | X2 | X3 | X4 | X5 | X6 | X7 | X8 | X9 | X10 | X11

data SetX = SetX [X]

setX :: SetX
setX = SetX [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11]

-- pitch class names
data C = CSS | CSSlashDb | DSS | DSSlashEb | ESS | FSS | FSSlashGb
       | GSS | GSSlashAb | ASS | ASSlashBb | BSS

-- Note: CSSlashDb means C#/Db

data SetC = SetC [C]

setC :: SetC
setC = SetC [CSS, CSSlashDb, DSS, DSSlashEb, ESS, FSS, FSSlashGb,
             GSS, GSSlashAb, ASS, ASSlashBb, BSS]

p :: C -> X
p CSS = X0
p CSSlashDb = X1
p DSS = X2
p DSSlashEb = X3
p ESS = X4
p FSS = X5
p FSSlashGb = X6
p GSS = X7
p GSSlashAb = X8
p ASS = X9
p ASSlashBb = X10
p BSS = X11

main :: IO ()
main = someFunc
