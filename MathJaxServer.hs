module MathJaxServer where

import Happstack.Server (Browsing(EnableBrowsing), nullConf, serveDirectory, simpleHTTP, port)

main :: IO ()
main = simpleHTTP nullConf { port = 1555 } $ serveDirectory EnableBrowsing [] "."