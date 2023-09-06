{-# LANGUAGE CPP #-}

module Another where

#ifdef darwin_HOST_OS
import Data.Maybe
#endif

-- #ifdef linux_HOST_OS
-- import Data.Maybe
-- #endif


myString :: String
myString = fromMaybe "" Nothing
