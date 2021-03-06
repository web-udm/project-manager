<?php

declare(strict_types=1);

namespace App\Model\User\Entity;

interface UserRepository
{
    public function hasByEmail(Email $email): bool;

    public function add(User $user): void;
}