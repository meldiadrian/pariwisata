@echo off
title Laravel Queue Worker - Portal Wisata
echo Starting Laravel Queue Worker...
echo Jangan tutup jendela ini saat server berjalan.
echo.
:restart
php artisan queue:work --tries=3 --sleep=3
echo.
echo Worker stopped. Restarting in 5 seconds...
timeout /t 5
goto restart
