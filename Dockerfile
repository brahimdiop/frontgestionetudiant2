### STAGE 1: Définir le répertoire de travail ###


### STAGE 2: ###
FROM nginx:1.17.1-alpine
COPY nginx.conf /etc/nginx/conf.d/
COPY --from=build /usr/src/app/dist/FormSubmit /usr/share/nginx/html
EXPOSE 80


