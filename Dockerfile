FROM nginx:alpine

# Default language (override at runtime with -e APP_LANGUAGE=nl or -e LANGUAGE=nl)
ENV LANGUAGE=en

# Copy static assets
COPY index.html /usr/share/nginx/html/
COPY docker-entrypoint.sh /docker-entrypoint.sh

RUN chmod +x /docker-entrypoint.sh

EXPOSE 80

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
