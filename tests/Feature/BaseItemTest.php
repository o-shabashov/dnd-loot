<?php

namespace Tests\Feature;

use App\Models\Perishable;
use Tests\TestCase;
use Illuminate\Foundation\Testing\RefreshDatabase;
use function App\Helpers\{d100, d20, baseItem};

class BaseItemTest extends TestCase
{
    use RefreshDatabase;

    public function testGetPerishableItem(): void
    {
        $model = baseItem(91);

        $this->assertInstanceOf(Perishable::class, $model);
    }
}
