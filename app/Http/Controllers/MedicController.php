<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use Illuminate\Support\Facades\Cache;

use function App\Helpers\{dHeal, generateItem};

class MedicController extends Controller
{
    public function __invoke()
    {
        $dungeonLevel = request('dungeon_level', 1);

        $items = Cache::remember('heal', Carbon::now()->addMinutes(5), static function () use ($dungeonLevel) {
            $items[] = generateItem(dice: dHeal(), usePrefix: true, useSuffix: true, dungeonLevel: $dungeonLevel);
            $items[] = generateItem(dice: dHeal(), usePrefix: true, useSuffix: true, dungeonLevel: $dungeonLevel);
            $items[] = generateItem(dice: dHeal(), usePrefix: true, useSuffix: true, dungeonLevel: $dungeonLevel);
            return $items;
        });

        return view('shops', compact('items', 'dungeonLevel'));
    }
}
