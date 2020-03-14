#
# patch helper
#
neutrino%-patch \
libstb-hal%-patch:
	( cd $(SOURCE_DIR) && diff -Nur --exclude-from=$(SCRIPTS_DIR)/diff-exclude $(subst -patch,,$@).org $(subst -patch,,$@) > $(BASE_DIR)/$(subst -patch,.patch,$@) ; [ $$? -eq 1 ] )

# keeping all patches together in one file
# uncomment if needed
#
# Neutrino MP DDT
NEUTRINO_DDT_PATCHES =
NEUTRINO_LIBSTB_DDT_PATCHES =

# Neutrino MP NI
NEUTRINO_NI_PATCHES =
NEUTRINO_LIBSTB_NI_PATCHES =

# Neutrino MP Tango
NEUTRINO_TANGOS_PATCHES =
NEUTRINO_LIBSTB_TANGOS_PATCHES =

# Oscam patch
OSCAM_LOCAL_PATCH =
