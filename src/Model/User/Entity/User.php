<?php

declare(strict_types=1);

namespace App\Model\User\Entity;

class User
{
    private string $email;

    private string $password;

    public function __construct(string $email, string $password)
    {
        $this->email = $email;
        $this->password = $password;
    }
}