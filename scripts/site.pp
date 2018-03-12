node default { }

node 'linuxagent1.example.com' {
  include lampserver
}

node 'linuxagent2.example.com' {
  include lampserver
}

node 'windowsagent.example.com' {
  include iisserver
}
