<header class="grid grid-cols-2 items-center gap-2 py-10 lg:grid-cols-3">
    <div class="flex lg:justify-center lg:col-start-2" style="cursor: pointer">
        <h2 onClick="window.location.reload();">🔄 Dungeon: {{ $dungeonLevel }}</h2>
        &nbsp;
        <a href="/loot?dungeon_level={{ $dungeonLevel }}">Loot</a>
        &nbsp;
        <a href="/smith?dungeon_level={{ $dungeonLevel }}">Smith</a>
        &nbsp;
        <a href="/medic?dungeon_level={{ $dungeonLevel }}">Heal</a>
        &nbsp;
        <a href="/witch?dungeon_level={{ $dungeonLevel }}">Witch</a>
        &nbsp;
        <a href="/purge-cache">Cache</a>
    </div>
</header>
