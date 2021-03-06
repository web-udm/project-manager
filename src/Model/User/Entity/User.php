<?php

declare(strict_types=1);

namespace App\Model\User\Entity;

class User
{
    private Id $id;

    private \DateTimeImmutable $date;

    private Email $email;

    private string $passwordHash;

    public function __construct(Id $id, \DateTimeImmutable $date, Email $email, string $passwordHash)
    {
        $this->id = $id;
        $this->date = $date;
        $this->email = $email;
        $this->passwordHash = $passwordHash;
    }

    public function getId(): string
    {
        return $this->id;
    }

    public function getDate(): string
    {
        return $this->date;
    }

    public function getEmail(): string
    {
        return $this->email;
    }

    public function getPasswordHash(): string
    {
        return $this->passwordHash;
    }
}