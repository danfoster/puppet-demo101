node /^client/ {
  include myfirstwebapp
  include motd
}

node default {
  include motd
}
