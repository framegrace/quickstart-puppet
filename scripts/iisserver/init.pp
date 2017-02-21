class iisserver {
  windowsfeature { 'IIS':
    feature_name => [
      'Web-Server',
      'Web-WebServer',
      'Web-Asp-Net45',
      'Web-ISAPI-Ext',
      'Web-ISAPI-Filter',
      'NET-Framework-45-ASPNET',
      'WAS-NET-Environment',
      'Web-Http-Redirect',
      'Web-Filtering',
      'Web-Mgmt-Console',
      'Web-Mgmt-Tools'
    ]
  }

  windowsfeature { 'Web-WebServer':
    ensure => present,
    installsubfeatures => true,
    installmanagementtools => true
  }
  
  file {    
    'c:/inetpub/wwwroot/info.aspx': content => '<%@ Page Trace="true"  Language="C#" ContentType="text/html" ResponseEncoding="utf-8" %>',
	require => windowsfeature['Web-WebServer'],
  }
}
