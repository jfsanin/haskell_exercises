fibonacci :: Integer -> Integer -> Integer -> Integer

fibonacci iteration prev current
    | iteration <= 2  = current
    | otherwise = fibonacci (iteration - 1) current (current + prev)


runfibo term = fibonacci term 1 1   

main = do putStrLn "Ingrese el termino de la serie a calcular :" 
          term <- readLn :: IO Integer
          print (runfibo term)
