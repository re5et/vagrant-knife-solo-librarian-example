name "mysql_server"
description "basic mysql server"

run_list(
  "role[base]",
  "recipe[mysql::server]",
  "recipe[my_box::monit_mysql]"
  )

default_attributes({
    :mysql => {
      :server_repl_password => 'foo',
      :server_root_password => 'bar',
      :server_debian_password => 'baz'
    }
  })
