SELECT
    full_name 'Nome completo',
    birthday 'Data de nascimento'
FROM users
WHERE
    active = true
    AND birthday >= '1990-01-01';