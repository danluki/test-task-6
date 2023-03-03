-- name: CreateProduct :one
INSERT INTO products (
  name,
  links,
  price
) VALUES (
  $1, $2, $3
) RETURNING *;

-- name: GetProduct :one
SELECT * FROM products
WHERE id = $1 LIMIT 1;

-- name: ListProducts :many
SELECT * FROM products
ORDER BY id
LIMIT $1
OFFSET $2;

-- name: DeleteProduct :exec
DELETE FROM products
WHERE id = $1;

