<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use Illuminate\Support\Facades\Cache;

use function App\Helpers\{dSmith, generateItem};

class SmithController extends Controller
{
    public function __invoke()
    {
        $dungeonLevel = request('dungeon_level', 1);

        $items = Cache::remember('smith', Carbon::now()->addMinutes(5), static function () use ($dungeonLevel) {
            $items[] = generateItem(dice: dSmith(), usePrefix: true, useSuffix: true, dungeonLevel: $dungeonLevel);
            $items[] = generateItem(dice: dSmith(), usePrefix: true, useSuffix: true, dungeonLevel: $dungeonLevel);
            $items[] = generateItem(dice: dSmith(), usePrefix: true, useSuffix: true, dungeonLevel: $dungeonLevel);
            return $items;
        });

        return view('shops', compact('items', 'dungeonLevel'));
    }
}
