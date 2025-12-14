# Práctica 8 – Proxy Inverso, MIME y Docker

**Nombre del alumno:** Issa El Mokadem

## Resumen
- En esta práctica he desplegado la aplicación "Miniblog" utilizando contenedores Docker. 
- He configurado NGINX como proxy inverso para gestionar las peticiones hacia el backend PHP.
- He implementado la entrega de archivos estáticos (JSON y MP4) con tipos MIME personalizados mediante volúmenes en Docker.
- He simulado un servidor de contenidos completo.

## Estructura de entrega
```
P8_Issa_El_Mokadem/
├── capturas/
│   ├── index_proxy.png
│   ├── json_headers.png
│   ├── mp4_headers.png
│   ├── docker_build.png
│   ├── docker_proxy_headers.png
│   └── miniblog_admin.png
├── ficheros/
│   ├── Dockerfile
│   ├── docker-compose.yml
│   └── nginx_default.conf
├── README.md
├── reflexion.md
└── comprobacion.md
```