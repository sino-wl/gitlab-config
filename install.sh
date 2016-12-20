
GITLAB_VERSION=8.14.5-ce.0

GITLAB_HOME=`pwd`/gitlab_home

echo "GITLAB_HOME:		$GITLAB_HOME"
echo "GITLAB_VERSION:	$GITLAB_VERSION"

docker run -p 10443:443 -p 10080:80 -p 10022:22 \
	--name sino-gitlab \
	--restart always \
    --volume $GITLAB_HOME/config:/etc/gitlab:Z \
    --volume $GITLAB_HOME/logs:/var/log/gitlab:Z \
    --volume $GITLAB_HOME/data:/var/opt/gitlab:Z \
    gitlab/gitlab-ce:$GITLAB_VERSION
    
sh setFirewall.sh
    
