<?php
if (session_status() !== PHP_SESSION_ACTIVE) session_start();

function requirerole(array $allowedRoles): void {
    $role = strtolower(trim((string)($_SESSION['UserLevel'] ?? '')));
    $allowedRoles = array_map(fn($r) => strtolower(trim((string)$r)), $allowedRoles);

    if (!in_array($role, $allowedRoles, true)) {
        http_response_code(403);
        echo "403 Forbidden";
        exit;
    }
}

/* The function disallows the ability for non admins to access files within the Restricted folder.  MUST BE CALLED IN ALL FILES IN THERE.*/