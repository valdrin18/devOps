FROM nginx

#config
# RUN mkdir /content
COPY ./content /content
COPY ./nginx.conf /etc/nginx/nginx.conf

ARG IS_READY
RUN if [ "$IS_READY" = "true" ]; then \
    echo "Ready" && mv content/ready.html content/index.html && rm -rf content/not-ready.html; \
    else mv content/not-ready.html content/index.html && rm -rf content/ready.html; \
    fi

VOLUME "/content"
EXPOSE 8080