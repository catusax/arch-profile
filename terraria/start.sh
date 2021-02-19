sudo docker run --rm -it -p 7777:7777 \
        -v $PWD/data:/config \
            --name=terraria \
                beardedio/terraria:tshock-latest
