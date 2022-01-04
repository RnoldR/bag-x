set -x
#--add-host=host.docker.internal:host-gateway \
docker run \
       --name nlextract \
       --add-host=tinctoris:host-gateway \
       -v ${BAG_X}/lvbag-extract-nl_2021-11.zip:/work/bag.zip nlextract/nlextract:latest \
           bagv2/etl/etl.sh \
               -a host=tinctoris \
               -a schema=nl \
               -a bag_input_file=/work/bag.zip \

set +x