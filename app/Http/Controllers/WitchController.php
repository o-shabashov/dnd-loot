<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use Illuminate\Support\Facades\Cache;

use function App\Helpers\{dWitch, generateItem};

class WitchController extends Controller
{
    public function __invoke()
    {
        $dungeonLevel = request('dungeon_level', 1);

        $items = Cache::remember('witch', Carbon::now()->addHour(), static function () use ($dungeonLevel) {
            $items[] = generateItem(dice: dWitch(), usePrefix: true, useSuffix: true, dungeonLevel: $dungeonLevel);
            $items[] = generateItem(dice: dWitch(), usePrefix: true, useSuffix: true, dungeonLevel: $dungeonLevel);
            $items[] = generateItem(dice: dWitch(), usePrefix: true, useSuffix: true, dungeonLevel: $dungeonLevel);
            return $items;
        });

        return view('shops', compact('items', 'dungeonLevel'));
    }
}
