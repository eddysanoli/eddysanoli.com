##
# You should look at the following URL's in order to grasp a solid understanding
# of Nginx configuration files in order to fully unleash the power of Nginx.
# https://www.nginx.com/resources/wiki/start/
# https://www.nginx.com/resources/wiki/start/topics/tutorials/config_pitfalls/
# https://wiki.debian.org/Nginx/DirectoryStructure
#
# In most cases, administrators will remove this file from sites-enabled/ and
# leave it as reference inside of sites-available where it will continue to be
# updated by the nginx packaging team.
##
server {

    # IMPORTANT: Can only have 1 "default_server" option across all sites.
    # The default_server option makes it so that if a request is made to an
    # address that doesn't match any other server blocks, it will be served
    # by the server block with the default_server option.
    #
    # Example:
    #     default_server: "example.com"
    #     request: "my.example.com"
    #     result: "example.com" since no server block matches "my.example.com"
    #
    listen 80 default_server;
    listen [::]:80 default_server;

    # IMPORTANT: SSL Configuration is handled automatically by Certbot.
    # No need to configure it here manually.

    # IMPORTANT: Where the files for your site are located
    root /var/www/infinito27/website/frontend/dist;

    # Add index.php to the list if you are using PHP
    index index.html index.htm index.nginx-debian.html;

    # IMPORTANT: The route associated with your site
    server_name infinito27.com;

    location / {
        # First attempt to serve request as file, then
        # as directory, then fall back to displaying a 404.
        try_files $uri $uri/ =404;
    }

}