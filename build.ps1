$env:CI_REGISTRY = "foo"
$env:TAG = "rc1"


docker compose -f docker-compose.yml -f .\docker-compose.ci.yml build

# api_image=$(docker-compose -f docker-compose.yml images -q carpooling.api)
# db_image=$(docker-compose -f docker-compose.yml images -q carpoolingdb)
# docker tag $api_image ${CI_REGISTRY_IMAGE}:carpoolingapi-latest
# docker tag $db_image ${CI_REGISTRY_IMAGE}:carpoolingdb-latest
# docker push ${CI_REGISTRY_IMAGE}:carpoolingapi-latest
# docker push ${CI_REGISTRY_IMAGE}:carpoolingdb-latest

docker image ls