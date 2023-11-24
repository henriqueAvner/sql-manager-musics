SELECT
    us.full_name 'Nome completo',
    us.email 'E-mail',
    pl.name 'Plano'
FROM users AS us
    INNER JOIN plans AS pl ON us.plan_id = pl.id
ORDER BY us.full_name;