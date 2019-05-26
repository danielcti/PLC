--a)
data UnidadeDeMedida = Quilometros Float
                     | Metros Float
                     | Centimetros Float

--b)
instance Show UnidadeDeMedida where
    show (Quilometros v) = show v ++ " Quilometros"
    show (Metros v) = show v ++ " Metros"
    show (Centimetros v) = show v ++ " Centimetros"

instance Eq UnidadeDeMedida where
    (==) (Quilometros v1) (Quilometros v2) = v1 == v2
    (==) (Metros v1) (Metros v2) = v1 == v2
    (==) (Centimetros v1) (Centimetros v2) = v1 == v2
    (==) (Quilometros v1) (Metros v2) = v1*1000 == v2
    (==) (Quilometros v1) (Centimetros v2) = v1*100000 == v2
    (==) (Metros v1) (Quilometros v2) = Quilometros v2 == Metros v1
    (==) (Metros v1) (Centimetros v2) = v1*100 == v2
    (==) (Centimetros v1) (Metros v2) = Metros v2 == Centimetros v1
    (==) (Centimetros v1) (Quilometros v2) = Quilometros v2 == Centimetros v1

instance  Ord UnidadeDeMedida where
    (<=) (Quilometros v1) (Quilometros v2) = v1 <= v2
    (<=) (Metros v1) (Metros v2) = v1 <= v2
    (<=) (Centimetros v1) (Centimetros v2) = v1 <= v2
    (<=) (Quilometros v1) (Metros v2) = v1*1000 <= v2
    (<=) (Quilometros v1) (Centimetros v2) = v1*100000 <= v2
    (<=) (Metros v1) (Quilometros v2) = Quilometros v2 >= Metros v1
    (<=) (Metros v1) (Centimetros v2) = v1*100 <= v2
    (<=) (Centimetros v1) (Metros v2) = Metros v2 >= Centimetros v1
    (<=) (Centimetros v1) (Quilometros v2) = Quilometros v2 >= Centimetros v1

--c)

minMaxMedidas :: [UnidadeDeMedida] -> (UnidadeDeMedida, UnidadeDeMedida)
minMaxMedidas [] = ((Metros 0), (Metros 0))
minMaxMedidas a = (menor a, maior a)

menor :: [UnidadeDeMedida] -> UnidadeDeMedida
menor [a] = a
menor (a:b:as) = min (a) (menor(b:as))

maior :: [UnidadeDeMedida] -> UnidadeDeMedida
maior [a] = a
maior (a:b:as) = max (a) (maior(b:as))


{-d)
A avaliacao lazy de uma expressão é quando alguns argumentos não precisam ser avaliados por
completo pois nao vao influenciar no resultado final, deixando a execução do código muito mais rápida
e eficiente, já que será calculado apenas o suficiente para a execução da função.
Já no caso da avaliação estrita ,todas as operações do codigo são executadas mesmo as que nao serão 
usadas.
EX:

function1 :: Int -> Int -> Int
function1 a b = a + 7

g :: Int -> Int
g b = b + g b

function1 3 (g 0) : na avaliacao lazy f1 nao depende de b pois o resultado é "a + 7", entao ele nao
calculará o valor de (g 0) já que não será relevante para o resultado e ainda entraria em loop
infinito. Já no caso da avaliação estrita ele vai tentar resolver o (g 0) antes de function1 
pois (g 0) é um parametro de function1, então ele entrará em loop infinito pois é o que a funcao
g faz.

-}