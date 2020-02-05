#!/bin/sh

curl -X GET --user-agent "ft_bornToSec" --referer "https://www.nsa.gov/" -s "http://10.12.1.124/index.php?page=e43ad1fdc54babe674da7c7b8f0127bde61de3fbe01def7d00f151c2fcca6d1c" | grep "flag"