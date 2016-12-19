

GITLAB_HOME=`pwd`

echo "GITLAB_HOME:	$GITLAB_HOME"

docker run -p 10443:443 -p 10080:80 -p 10022:22 \
	--name gitlab \
	--restart always \
    --volume $GITLAB_HOME/config:/etc/gitlab:Z \
    --volume $GITLAB_HOME/logs:/var/log/gitlab:Z \
    --volume $GITLAB_HOME/data:/var/opt/gitlab:Z \
    gitlab/gitlab-ce:8.14.5-ce.0
    
