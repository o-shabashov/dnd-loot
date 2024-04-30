<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use function App\Helpers\{d20, d60, d100, baseItem};

class LootController extends Controller
{
    public function __invoke()
    {
        $dungeonLevel = Request::get('dungeon_level', 1);

        // Roll d20 to determine basic treasure
        $item = match (d20()) {
            // Nothing
            1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 => null,

            // Gold
            13, 14, 15, 16, 17 => (d20() * $dungeonLevel) + 100 . ' gold',

            // Item
            18, 19, 20 => match (d20() + $dungeonLevel) {
                // rol d60 no base item table only (base item pg only)
                1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 15 => baseItem(dice: d60(), dungeonLevel: $dungeonLevel),

                // rol d100 on base item table and then rol any stated prefix roll (add base item prefix xp and gp)
                16, 17 => baseItem(dice: d100(), usePrefix: true, dungeonLevel: $dungeonLevel),

                // rol d100 on base item table and then rol any stated suffix roll (add base item suffix xp and gp)
                18, 19 => baseItem(dice: d100(), useSuffix: true, dungeonLevel: $dungeonLevel),

                // rol d100 on base item table and then rol any stated prefix and suffix roll (add base item prefix and suffix xp and gp)
                20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40 => baseItem(dice: d100(), usePrefix: true, useSuffix: true, dungeonLevel: $dungeonLevel),
            },
        };

        // TODO normalize 36+ as a 36-100

        return view('welcome', compact('dungeonLevel', 'item'));
    }
}
