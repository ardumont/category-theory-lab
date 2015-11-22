module Main where

import           Lib

data X = X0 | X1 | X2 | X3 | X4 | X5 | X6 | X7 | X8 | X9 | X10 | X11
         deriving Show

-- pitch class
data SetX = SetX [X]
            deriving Show

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
       deriving Show

-- Pitch class names
data SetZ = SetZ [Z]
            deriving Show

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

-- Note:
-- 7 single arrows from domain to codomain
-- 5 dual arrows from domain to codomain

data L = A | B | C | D | E | F | G
         deriving Show

-- Letter names of the pitch class names
data SetL = SetL [L]
            deriving Show

setL :: SetL
setL = SetL [C,D,E,F,G,A,B]

-- Pitch class names to its letter
t :: Z -> L
t CSS = C
t CS  = C
t Db  = D
t DSS = D
t DS  = D
t Eb  = E
t ESS = E
t FSS = F
t FS  = F
t Gb  = G
t GSS = G
t GS  = G
t Ab  = A
t ASS = A
t AS  = A
t Bb  = B
t BSS = B

-- Note: 4 cluster-2 relations + 3 cluster-3 relations

-- Major mode is a regular mode
i :: L -> Z
i C = CSS
i D = DSS
i E = ESS
i F = FSS
i G = GSS
i A = ASS
i B = BSS

-- minor mode is a regular mode
j :: L -> Z
j C = CSS
j D = DSS
j E = Eb
j F = FSS
j G = GSS
j A = Ab
j B = BSS

main :: IO ()
main = someFunc
