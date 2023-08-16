{-# LANGUAGE CPP #-}

module Main where

main :: IO ()
main = putStrLn "Hello, Haskell!"


myConstant :: Int
myConstant =
#if defined(darwin_HOST_OS)
    1
#elif defined(mingw32_HOST_OS)
    2
#elif defined(linux_HOST_OS)
    3
#else
#  error Unsupported platform
#endif
