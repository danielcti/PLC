data Instrucao = PUSH Int
               | POP
               | ADD
               | SUB
               | DUP  
type Pilha = [Int]

funcao :: Instrucao -> Pilha -> Pilha
funcao (PUSH b) (a:as) = b:(a:as)
funcao (PUSH b) [] = b:[]

funcao POP a = tail a

funcao ADD [] = []
funcao ADD (a:as) | as == [] = a:[]
                    | otherwise = add (a:as)

funcao SUB [] = []
funcao SUB (a:as) | as == [] = a:[]
                    | otherwise = sub (a:as)

funcao DUP [] = []
funcao DUP (a:as) = (a:(a:as))

add :: Pilha -> Pilha
add (a:(as:ass)) = (a+as:ass)

sub :: Pilha -> Pilha
sub (a:(as:ass)) = (a-as:ass)
