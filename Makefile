KARABINER_DIR = ~/.config/karabiner/assets/complex_modifications
KARABINER_SAVE_DIR = ./karabiner

save:
	mkdir -p $(KARABINER_SAVE_DIR)
	cp -f $(KARABINER_DIR)/user_defined.json $(KARABINER_SAVE_DIR)/

load:
	cp -f $(KARABINER_SAVE_DIR)/user_defined.json $(KARABINER_DIR)/