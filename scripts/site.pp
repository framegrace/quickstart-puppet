node default { }

node 'linuxagent1.leansm.com' {
  include lampserver
}

node 'linuxagent2.leansm.com' {
  include lampserver
}

node 'windowsagent.leansm.com' {
  include iisserver
}
