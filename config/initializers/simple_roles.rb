SimpleRoles.configure do
  valid_roles :admin, :user, :guest
  strategy :one
end
