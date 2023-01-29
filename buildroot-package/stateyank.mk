################################################################################
#
# Stateyank
#
################################################################################

STATEYANK_VERSION = 0.1
STATEYANK_SOURCE = stateyank-0.1.tar.gz
STATEYANK_SITE = https://github.com/jaoeul/stateyank/releases/download/v0.1
STATEYANK_LICENSE = GPL-2.0
STATEYANK_LICENSE_FILES = COPYING

$(eval $(kernel-module))
$(eval $(generic-package))
