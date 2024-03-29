FROM public.ecr.aws/nginx/nginx:stable

EXPOSE 80

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html

RUN uname -m > /usr/share/nginx/html/arch.txt
