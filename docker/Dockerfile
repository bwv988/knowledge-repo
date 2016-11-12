# Experimental Docker file for knowledge sharing portal.
# RS11112016

# FIXME: Need smaller base image.
FROM continuumio/anaconda3

# Some environment settings.
ENV DEFAULT_REPO_PATH /repo

COPY files/entrypoint.sh /entrypoints/entrypoint.sh
COPY files/knowledge-repo-svr.sh /entrypoints/knowledge-repo-svr.sh

WORKDIR $DEFAULT_REPO_PATH

RUN set -ex \
  && pip install --upgrade knowledge-repo \
  && yes | knowledge_repo --repo $DEFAULT_REPO_PATH init \
  && chmod a+x /entrypoints/entrypoint.sh \
  && chmod a+x /entrypoints/knowledge-repo-svr.sh

ENTRYPOINT ["/entrypoints/entrypoint.sh"]
CMD ["/entrypoints/knowledge-repo-svr.sh"]
