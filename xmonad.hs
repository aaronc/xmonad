import XMonad
import qualified Data.Map as M
import qualified XMonad.StackSet as S
import XMonad.Util.EZConfig
import XMonad.Hooks.DynamicLog

altMask = mod1Mask
--myKeys conf = M.fromList $

main = xmonad $ defaultConfig
              { borderWidth        = 4
              , modMask = mod4Mask
              , terminal           = "konsole"
              , normalBorderColor  = "#cccccc"
              , focusedBorderColor = "#05A300" }
              `additionalKeys`
              [ 
               ((altMask, xK_Tab), windows S.focusDown)
              , ((altMask .|. shiftMask, xK_Tab), windows S.focusUp)
              ]

{- myPP = defaultPP { ppCurrent = dzenColor "white" "#4c4c4c" . pad
                     , ppVisible = dzenColor colorLtBlue "#242424" . pad
                     , ppHidden = dzenColor "white" "#242424" . pad
                     , ppHiddenNoWindows = const ""
                     , ppUrgent = dzenColor "red" "yellow" . dzenStrip
                     , ppWsSep = ""
                     , ppSep = ""
                     , ppLayout = dzenColor "#8c8c8c" "#242424" .
                                    (\ x -> case x of
                                              "Tabbed Tall" -> " TT "
                                              "Tabbed Magnifier Tall" -> " T+ "
                                              "Tabbed IM ReflectX IM Full" -> " g "
                                              "Tabbed Mirror Tall" -> " H "
                                              "Tabbed Full" -> " [ ] "
                                              _ -> pad x
                                    )
                     , ppTitle = ("^bg(#242424)" ++) . wrap "< " " > " . dzenEscape
                     }

myDzen conf = statusBar ("dzen2 " ++ flags) myPP toggleStrutsKey conf
 where
     fg      = "'#dddddd'" -- n.b quoting
     bg      = "'#242424'"
     --fn      = "Inconsolata-15:Bold"
     fn      = "-*-terminus-medium-*-*-*-16-*-*-*-*-*-iso8859-1"
     --flags   = "-e 'onstart=lower' -w 600 -x 1920 -ta l -fg " ++ fg ++ " -bg " ++ bg ++ " -fn " ++ fn
     --flags   = "-e 'onstart=lower' -w 450 -x 1280 -ta l -fg " ++ fg ++ " -bg " ++ bg ++ " -fn " ++ fn
     -- laptop screen at left:
     --flags   = "-e 'onstart=lower' -w 600 -x 1600 -ta l -fg " ++ fg ++ " -bg " ++ bg ++ " -fn " ++ fn
     -- main screen, acer at right
     flags   = "-e 'onstart=lower' -w 600 -x 0 -ta l -fg " ++ fg ++ " -bg " ++ bg ++ " -fn " ++ fn
-}