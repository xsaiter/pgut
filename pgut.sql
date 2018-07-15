select '-100.1221e-308' ~ '^-?(0|[1-9]\d*)?\.?\d+(e-?([1-2]\d\d|[3]0[0-8]))?$'

-- domain
select 'http://www.site.com' ~ '^(http(s)?://)?(www\.)?((\w|-)+\.[a-z]{2,3})$'
