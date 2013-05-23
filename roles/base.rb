name "base"
description "the simple, bare necessities"

run_list(
  "recipe[build-essential]",
  "recipe[ubuntu]",
  "recipe[sudo]",
  "recipe[apt]",
  "recipe[ntp]",
  "recipe[monit]",
  "recipe[monit::ubuntu12fix]",
  "recipe[my_box::monit_base]"
  )

default_attributes({
    :authorization => {
      :sudo => {
        :users => ["vagrant"],
        :groups => ["sudo", "admin", "wheel"],
        :passwordless => true
      }
    },
    :monit => {
      :notify_email => "receiver-email",
      :poll_period => 30,
      :poll_start_delay => 60,
      :mailserver => {
        :host => 'smtp.gmail.com',
        :port => '587',
        :username => 'sender-email',
        :password => 'sender-email-password',
        :using => 'tlsv1',
        :with => 'timeout 30 seconds'
      }
    }
  })
