-----------------------------------------

create or replace function validate_domain_name(s text) returns boolean as
$$
begin
return s ~ '^(http(s)?://)?(www\.)?((\w|-)+\.[a-z]{2,3})$';
end
$$
language plpgsql immutable;

-- example: select validate_domain_name('http://www.site.ru')

-----------------------------------------

create or replace function validate_dbl(s text) returns boolean as
$$
begin
return s ~ '^-?(0|[1-9]\d*)?\.?\d+(e-?([1-2]\d\d|[3]0[0-8]))?$';
end
$$
language plpgsql immutable;

-- example: select validate_dbl('-100.1221e-308')

-----------------------------------------
