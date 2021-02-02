module VerifyExamples.Widget.ButtonRow0 exposing (..)

-- This file got generated by [elm-verify-examples](https://github.com/stoeffel/elm-verify-examples).
-- Please don't modify this file by hand!

import Test
import Expect

import Widget exposing (..)
import Widget.Material as Material
import Element

type Msg =
    Select Int

selected : Maybe Int
selected =
    Just 0



spec0 : Test.Test
spec0 =
    Test.test "#buttonRow: \n\n    Widget.select\n        { selected = selected\n        , options =\n            [ 1, 2, 42 ]\n                |> List.map\n                    (\\int ->\n                        { text = String.fromInt int\n                        , icon = always Element.none\n                        }\n                    )\n        , onSelect = (\\i -> Just (Select i ))\n        }\n        |> Widget.buttonRow\n            { elementRow = Material.row\n            , content = Material.toggleButton Material.defaultPalette\n            }\n        |> always \"Ignore this line\"\n    --> \"Ignore this line\"" <|
        \() ->
            Expect.equal
                (
                Widget.select
                    { selected = selected
                    , options =
                        [ 1, 2, 42 ]
                            |> List.map
                                (\int ->
                                    { text = String.fromInt int
                                    , icon = always Element.none
                                    }
                                )
                    , onSelect = (\i -> Just (Select i ))
                    }
                    |> Widget.buttonRow
                        { elementRow = Material.row
                        , content = Material.toggleButton Material.defaultPalette
                        }
                    |> always "Ignore this line"
                )
                (
                "Ignore this line"
                )