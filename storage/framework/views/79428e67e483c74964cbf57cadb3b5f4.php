    <?php
        $__scriptKey = '1111878103-0';
        ob_start();
    ?>
<script>
    Livewire.on('passkeyPropertiesValidated', async function (eventData) {
        try {
            const passkeyOptions = eventData[0].passkeyOptions;
            const passkey = await startRegistration({ optionsJSON: passkeyOptions });
            window.Livewire.find('<?php echo e($_instance->getId()); ?>').call('storePasskey', JSON.stringify(passkey));
        } catch (e) {
            if (e.name !== 'AbortError') {
                console.error('Passkey registration failed:', e);
            }
        }
    });
</script>
    <?php
        $__output = ob_get_clean();

        \Livewire\store($this)->push('scripts', $__output, $__scriptKey)
    ?>
<?php /**PATH C:\laragon\www\pariwisatalive\vendor\jeffgreco13\filament-breezy\resources\views\livewire\passkeys\create-script.blade.php ENDPATH**/ ?>