<?php

namespace App\Filament\Admin\Pages\Auth;

use App\Rules\RecaptchaRule;
use Filament\Auth\Pages\Login as BaseLogin;
use Filament\Forms\Components\ViewField;
use Filament\Schemas\Schema;

class Login extends BaseLogin
{
    protected string $view = 'filament.admin.pages.login';

    public function form(Schema $schema): Schema
    {
        return $schema
            ->components([
                $this->getEmailFormComponent(),
                $this->getPasswordFormComponent(),
                $this->getRememberFormComponent(),
                ViewField::make('recaptcha_token')
                    ->view('filament.forms.components.recaptcha')
                    ->label('')
                    ->rules([new RecaptchaRule()]),
            ]);
    }

    protected function throwFailureValidationException(): never
    {
        $this->data['recaptcha_token'] = null;

        parent::throwFailureValidationException();
    }
}
