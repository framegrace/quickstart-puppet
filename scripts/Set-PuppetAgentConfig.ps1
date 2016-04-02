$conf = Get-Content C:\ProgramData\PuppetLabs\puppet\etc\puppet.conf
$conf = $conf.replace('puppet','puppetmaster.example.com')
Set-Content C:\ProgramData\PuppetLabs\puppet\etc\puppet.conf -Value $conf
Restart-Service puppet