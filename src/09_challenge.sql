SELECT
    pl.name 'Plano',
    COUNT(us.plan_id) AS 'Quantidade de usuários'
FROM plans AS pl
    INNER JOIN users AS us ON us.plan_id = pl.id
GROUP BY pl.name
ORDER BY
    COUNT(us.plan_id) DESC;