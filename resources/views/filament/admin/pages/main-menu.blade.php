<x-filament-panels::page>
    <form wire:submit="save">
        {{ $this->form }}

        <div class="mt-4 text-left">
            <x-filament::button type="submit">
                Simpan Menu
            </x-filament::button>
        </div>
    </form>
</x-filament-panels::page>
