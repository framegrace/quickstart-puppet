certutil -addstore Root c:\cfn\downloads\GeoTrust_Global_CA.pem
cd "C:\Program Files (x86)\Puppet Labs\Puppet\bin\"

@ECHO OFF

call "%~dp0environment.bat" %0 %*

REM Display Ruby version
ruby.exe -v

puppet module install puppetlabs-windows