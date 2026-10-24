    <?php
        $__scriptKey = '1530878659-0';
        ob_start();
    ?>
<script>
    $wire.on('authenticate-with-passkey', async (options) => {
        try {
            const optionsJSON = JSON.parse(options)
            const startAuthenticationResponse = await startAuthentication({ optionsJSON });
            $wire.login(startAuthenticationResponse);
        } catch (e) {
            if (e.name !== 'AbortError') {
                console.error('Passkey authentication failed:', e);
            }
        }
    });
</script>
    <?php
        $__output = ob_get_clean();

        \Livewire\store($this)->push('scripts', $__output, $__scriptKey)
    ?>

<?php /**PATH C:\laragon\www\pariwisatalive\vendor\jeffgreco13\filament-breezy\resources\views\livewire\passkeys\authenticate-script.blade.php ENDPATH**/ ?>