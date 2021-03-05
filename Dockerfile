FROM byrnedo/alpine-curl:0.1.5 
RUN apk --update --no-cache add jq     && mkdir -p /tmp/oktaws     && curl -sL        https://github.com/hfuss/okta-aws-cli/releases/download/v0.0.1-alpha/oktaws_0.0.1-alpha_Linux_x86_64.tar.gz         -o /tmp/oktaws/oktaws.tgz     && tar -zxvf /tmp/oktaws/oktaws.tgz -C /tmp/oktaws/     && mv -f /tmp/oktaws/oktaws /usr/local/bin/     && rm -rf /tmp/oktaws     && mkdir /home/oktaws     && chgrp -R 0 /home/oktaws     && chmod -R g=u /home/oktaws
CMD [ "/bin/bash" ]
