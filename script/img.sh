count=$(curl -s -u UcfvXPtlbX:x93752H0jS4f618s -X GET https://7tiuxysa.c1.gra9.container-registry.ovh.net/api/v2.0/projects/mydemoproject/repositories/frontend/artifacts?=${1} | jq '.[].tags[].name' | wc -l)

if [ $count -eq 0 ]
then
        echo "no-images"
else
        curl -s -u UcfvXPtlbX:x93752H0jS4f618s -X GET https://7tiuxysa.c1.gra9.container-registry.ovh.net/api/v2.0/projects/mydemoproject/repositories/frontend/artifacts?=${1} | jq '.[] | .tags[] | .name' | sed 's/"//g'
fi