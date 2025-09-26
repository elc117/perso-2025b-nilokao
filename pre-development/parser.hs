import qualified Data.Text as TS   -- Strict Text
import qualified Data.Text.IO as TIO
import qualified Data.Text.Lazy as TL  -- Lazy Text

-- funcao que retorna verdadeiro para palavras com 6 letras que não tenham '-' ou ' '
word6Letter :: TL.Text -> Bool
word6Letter s = TL.length s == 6 && TL.all (`notElem` ['-', ' ']) s

-- funcao main que vai aplicar a word6Letter em todo o arquivo e escrever de volta no mesmo 
main :: IO ()
main = do
    conteudo <- TIO.readFile "palavras.txt"
    let palavras = map TL.fromStrict (TS.lines conteudo)
        palavras6 = filter word6Letter palavras
    TIO.writeFile "palavras.txt" (TS.unlines (map TL.toStrict palavras6))