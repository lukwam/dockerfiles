isc-dhcpd
=========

Create a volume container for the /data:

```bash
docker run -d -v /data --name dhcpd-data busybox true
```

Run the container:

```bash
docker run -d --volumes-from dhcpd-data --name dhcpd lukwam/isc-dhcpd
```

Use a temporary container to edit the ``/data/dhcpd.conf``:

```bash
docker run -i -t --volumes-from dhcpd-data busybox /bin/sh -l
```

Edit ``/data/dhcpd.conf`` as desired, then restart the dhcpd container.
