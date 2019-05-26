data Comando = Left1 | Right1 | Forward Int | Backward Int
  deriving(Show)
data Direcao = Norte | Sul | Leste | Oeste
  deriving(Show)
type Posicao = (Int,Int,Direcao)

anda :: Posicao -> Direcao -> Comando -> Posicao
anda (x,y,d) Norte (Forward n) = (x,y+n,d)
anda (x,y,d) Norte (Backward n) = (x,y-n,d)
anda (x,y,d) Sul (Forward n) = (x,y-n,d)
anda (x,y,d) Sul (Backward n) = (x,y+n,d)
anda (x,y,d) Leste (Forward n) = (x+n,y,d)
anda (x,y,d) Leste (Backward n) = (x-n,y,d)
anda (x,y,d) Oeste (Forward n) = (x-n,y,d)
anda (x,y,d) Oeste (Backward n) = (x+n,y,d)

rotate :: Direcao -> Comando -> Direcao
rotate Norte Left1 = Oeste
rotate Oeste Left1 = Sul
rotate Sul Left1 = Leste
rotate Leste Left1 = Norte
rotate Norte Right1 = Leste
rotate Leste Right1 = Sul
rotate Sul Right1 = Oeste
rotate Oeste Right1 = Norte