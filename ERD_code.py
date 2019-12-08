wine_info
-
title VARCHAR PK
Variety VARCHAR

location
-
title VARCHAR FK >- wine_info.title
winery VARCHAR
region VARCHAR
province VARCHAR
country VARCHAR

taster_review
-
title VARCHAR FK >- wine_info.title
taster_name VARCHAR
taster_twitter_handle VARCHAR
points INT
description VARCHAR
price numeric

designation
-
title VARCHAR FK >- wine_info.title
designation VARCHAR
winery VARCHAR

winemag_same_wine_review
-
title VARCHAR FK >- wine_info.title
description VARCHAR
points INT
price VARCHAR


