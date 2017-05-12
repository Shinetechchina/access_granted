defmodule Accessgrant do
    defmacro can
end


# Map.keys(cond) |> Enum.reduce(true, fn(x, acc) -> (u[x] == cond[x]) && acc end )

# struct.__struct__ == User

# defimpl Canada.Can, for: User do
#   role :admin, {is_admin: true} do
#     [
#       can? :manage, Post
#       can? :publsh, Post, {is_publish: true}
#      ]
#   end
    
#   role :manage, {is_manager: true} do
#     [
#         can? :edit, Post
#         can? :delete, Post
#     ]
#   end
# end

# role(:admin, {})

# defmodule CanadaTest do
#   import Canada

#   current_user |> can?(:manage, post)

#   current_user |> is?(:manage)
# end
