docker-wikidist
===============

= About

Wiki Distribution via BitTorrent Sync http://wikidist.tklapp.com

= Installation

== Build Docker Container
- docker build -t net127/wikidist .

== Run Docker Container
- docker run -i -t -d net127/wikidist
- Wait for updates
  - use docker logs [CID] to view progress
  - note tmp root password at top of log
- ssh root@IP_ADDR
- Do TurnKey Linux Setup.
- Note IP Address.

= Configuration

== Change your btsync webui password!!!

- Open http://HOST_IP:8888
- Preferences -> Authorization

  - default username: admin
  - default password: changeme

== Create btsync Folder

=== Initial Server
- Add Folder -> Path /var/lib/dokuwiki/data -> Generate [Secret] -> Add

=== R/O or R/W Server
- Add Folder -> Path /var/lib/dokuwiki/data -> Enter Secret -> Add

Enjoy!
