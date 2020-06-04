/sbin/e-smith/db yum_repositories set epel repository \
Name 'Epel - EL6' \
BaseURL 'http://download.fedoraproject.org/pub/epel/6/$basearch' \
MirrorList 'http://mirrors.fedoraproject.org/mirrorlist?repo=epel-6&arch=$basearch' \
EnableGroups no \
GPGCheck yes \
GPGKey http://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL \
Exclude perl-Razor-Agent \
Visible no \
status disabled

signal-event yum-modify
yum install nginx --enablerepo=epel
