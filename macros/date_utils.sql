{% macro get_season (x) %}

case
    when month(to_timestamp({{x}})) in (12,1,2) 
    then 'winter'
    when month(to_timestamp({{x}})) in (3,4,5) 
    then 'spring'
    when month(to_timestamp({{x}})) in (6,7,8) 
    then 'summer'
    else 'autumn'
end

{% endmacro %}


{% macro get_daytype (x) %}

case
    when dayname(to_timestamp({{x}})) in ('sat','sun')
    then 'weekend'
    else 'businessday'
end

{% endmacro %}