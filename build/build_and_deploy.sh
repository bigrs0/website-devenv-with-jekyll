if [ -e .env ]; then
  set -a
  eval "$(cat .env <(echo) <(declare -x))"
  set +a
fi

# build
docker build -t $repo:latest .
docker tag $repo:latest $repo:$tag

# login
echo -n $docker_pass | docker login -u $docker_user --password-stdin

# push
docker push $repo:$tag
docker push $repo:latest
