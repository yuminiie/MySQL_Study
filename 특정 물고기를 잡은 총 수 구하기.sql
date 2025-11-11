
select count(*) as FISH_COUNT
    from FISH_INFO I
        join FISH_NAME_INFO NI
        on I.FISH_TYPE = NI.FISH_TYPE
where NI.FISH_NAME in ('BASS', 'SNAPPER');