-----------------------------------------

create or replace function validate_domain_name(s text)
returns boolean as
$$
begin
return s ~ '^(http(s)?://)?(www\.)?((\w|-)+\.[a-z]{2,3})$';
end
$$
language plpgsql immutable;

-- example: select validate_domain_name('http://www.site.ru')

-----------------------------------------

create or replace function validate_dbl(s text)
returns boolean as
$$
begin
return s ~ '^-?(0|[1-9]\d*)?\.?\d+(e-?([1-2]\d\d|[3]0[0-8]))?$';
end
$$
language plpgsql immutable;

-- example: select validate_dbl('-100.1221e-308')

-----------------------------------------

create or replace function remove_repeated_word(s text)
returns text as
$$
begin
return regexp_replace(s, '\m(\w+)\s+(\1)\M', '\1', 'g');
end
$$
language plpgsql;

-- example: select remove_repeated_word('this is is a text');

-----------------------------------------

create or replace function validate_ip(s text)
returns text as
$$
begin
return s ~ '^((([3-9]\d?|2[0-5]{0,2}|1\d{0,2}|0)|0x[a-fA-F0-9]{1,2})(\.)){3}(([3-9]\d?|2[0-5]{0,2}|1\d{0,2}|0)|0x[a-fA-F0-9]{1,2})$';
end
$$
language plpgsql;

-- example: select validate_ip('25.34.0xFF.0x0c');

-----------------------------------------

create or replace function remove_repeated_spaces(s text)
returns text as
$$
begin
return regexp_replace(s, '\s{2,}', ' ', 'g');
end
$$
language plpgsql;

-- example: remove_repeated_spaces('this   is a    table')

-----------------------------------------
