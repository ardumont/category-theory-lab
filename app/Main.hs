module Main where

import           Lib

-- Notes from https://www.youtube.com/watch?v=P6DvIfTJhx8
-- Music S

-- C, C#/Bb, etc... so 12 pitches
data X = X0 | X1 | X2 | X3 | X4 | X5 | X6 | X7 | X8 | X9 | X10 | X11
         deriving (Show,Eq)

-- pitch class
data Set a = Set [a]
             deriving (Show, Eq)

instance Functor Set where
  fmap f (Set l) = Set (map f l)

setX :: Set X
setX = Set [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11]

idX :: X -> X
idX = id

-- pitch class names
-- data C = CSS | CSSlashDb | DSS | DSSlashEb | ESS | FSS | FSSlashGb
--        | GSS | GSSlashAb | ASS | ASSlashBb | BSS
-- Note: CSSlashDb means C#/Db

-- data SetC = SetC [C]

-- setC :: Set [C]
-- setC = Set [CSS, CSSlashDb, DSS, DSSlashEb, ESS, FSS, FSSlashGb,
--             GSS, GSSlashAb, ASS, ASSlashBb, BSS]

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

-- 12 pitches but some have 2 definitions D#/Eb is the same pitch... so 12 + 5 aliases
data Z = CSS | CS | Db | DSS | DS | Eb | ESS | FSS | FS | Gb
       | GSS | GS | Ab | ASS | AS | Bb | BSS
       deriving (Show, Eq)

-- Pitch class names
setZ :: Set Z
setZ = Set [CSS, CS, Db, DSS, DS, Eb, ESS, FSS, FS, Gb,
            GSS, GS, Ab, ASS, AS, Bb, BSS]

idZ :: Z -> Z
idZ = id

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
         deriving (Show, Eq)

-- Letter names of the pitch class names
setL :: Set L
setL = Set [C,D,E,F,G,A,B]

idL :: L -> L
idL = id

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

-- a regular mode is any map mi:L -> Z for which the map m:Z -> L is a
-- retraction, & for which the induced composite which n:Z -> X,
-- n . mi is a monomorphism ...

-- Category MusicS so far:
-- 3 objects: X,Z,L
-- 4 arrows: n: Z -> X
--           t: Z -> L
--           i: L -> Z
--           j: L -> Z

i' :: L -> X
i' = n . i

setFromI' :: Set X
setFromI' = fmap i' setL

-- λ> setFromI'
-- Set [X0,X2,X4,X5,X7,X9,X11]
-- it :: Set X

j' :: L -> X
j' = n . j

setFromJ' :: Set X
setFromJ' = fmap j' setL

-- λ> setFromJ'
-- Set [X0,X2,X3,X5,X7,X8,X11]
-- it :: Set X

-- t . j :: L -> L
-- λ> fmap (t . j) setL
-- Set [C,D,E,F,G,A,B]
-- it :: Set L
-- λ> fmap (t . j) setL == setL
-- True
-- it :: Bool

-- Definition:
-- For a diagram to commute, all paths between two objects must be
-- interpreted as the same arrow

-- Identity laws: 1B . f = f . 1A = f
 -- In any category, the following diagram must commute:
-- A -f-> B
-- A -1A-> A
-- B -1B-> B

-- Initial object in S

-- In any category C, an object 0 is said to be an Initial Object of
-- C, if for all objects X in C, there is a unique C-arrow 0 -> X

main :: IO ()
main = someFunc
