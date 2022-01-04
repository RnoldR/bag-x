# BAG Extract
Extracts, transforms en laadt (ETL) een BAG extract in een postgres database.

Version 0.0. Work in progress: does not work yet.

## Inleiding
De Basisregistratie Adressen en Gebouwen (BAG) bevat informatie over (in principe) alle adressen en gebouwen in Nederland. Deze data wordt bijgehouden door gemeenten, verzameld en gebundeld door het [Kadaster](https://www.kadaster.nl/zakelijk/registraties/basisregistraties/bag/over-bag) en vervolgens als open data ter beschikking gesteld. 

Deze data is beschikbaar in XML-formaat. Waar de meesten behoefte aan hebben is een database met BAG gegevens. Het project [NLExtract](https://github.com/nlextract/NLExtract) converteert XML naat tabelvorm en laadt de tabellen in een database.

## Data download (BAG)
De BAG data van het Kadaster is [hier](https://www.kadaster.nl/zakelijk/producten/adressen-en-gebouwen/bag-2.0-extract) beschikbaar. 

Voor het verdere loop van deze handleiding gaan we ervan uit dat de data is gedownload als `lvbag-extract-nl_2021-11.zip` in de directory `/path/to/bag-extract`. Je mag er natuurlijk je eigen namen aan geven.

## De database: PostgreSQL en Postgis
Installatie en gebruik van postgres met postgis toelichten.

## Gebruik van NLExtract
NLExtract kan op twee manieren worden ingezet:
1. zonder Docker
2. met Docker

### Zonder Docker
[Te doen]

## Docker 


    `docker run \
        --name nlextract \
        --add-host=host.docker.internal:host-gateway \
        -v ${BAG_X}/lvbag-extract-nl_2021-11.zip:/work/bag.zip nlextract/nlextract:latest \
            bagv2/etl/etl.sh \
                -a host=tinctoris \
                -a schema=nl \
                -a bag_input_file=/work/bag.zip \
    `
