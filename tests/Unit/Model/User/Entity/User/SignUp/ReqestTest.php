<?php

declare(strict_types=1);

namespace App\Tests\Unit\Model\User\Entity\User\SignUp;

use App\Model\User\Entity\User;
use PHPUnit\Framework\TestCase;

class RequestTest extends TestCase
{
    public function testSuccess(): void
    {
        $user = new User(
            $email = 'test@test.test',
            $passwordHash = 'passwordHash'
        );

        $this->assertEquals($email, $user->getEmail());
        $this->assertEquals($passwordHash, $user->getPasswordHash());
    }
}