# nexus
default['cbp']['apps']['jee']['sfepi-services']['version'] = '0.1.0'
default['cbp']['apps']['jee']['sfepi-services']['packaging'] = "war"
default['cbp']['apps']['jee']['sfepi-services']['groupId'] = "cbp.production"
default['cbp']['apps']['jee']['sfepi-services']['artifactId'] = "sfepi-services"

# global cbp
default['cbp']['apps']['jee']['sfepi-services']['type'] = "web"
default['cbp']['apps']['jee']['sfepi-services']['jndi']['binding'] = ['sfepi-services.xml']

# logs
default['cbp']['apps']['jee']['sfepi-services']['template']['path']['log4j.xml'] = "WEB-INF/classes"
default['cbp']['apps']['jee']['sfepi-services']['traces']['level'] = 'INFO'
default['cbp']['apps']['jee']['sfepi-services']['troubleshooting']['level'] = 'WARN'