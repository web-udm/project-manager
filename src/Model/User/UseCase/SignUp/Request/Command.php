<?php

declare(strict_types=1);

namespace App\Model\User\UseCase\SignUp\Request;

class Command
{
    public string $email;

    public string $password;
}