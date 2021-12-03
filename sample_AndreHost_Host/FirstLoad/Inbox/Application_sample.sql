
@wizRpl(application[DEPLOY_TARGET]HOST_OFFICE=DSM);
@wizRpl(application[DEPLOY_TARGET]XSTORE=DWEB);

@wizRpl(application[TARGET_TRS]POS_TAB='©WIZGET(TARGET)');
@wizRpl(application[TARGET_TRS]PRICE_TAB='©WIZGET(TARGET)');
@wizRpl(application[TARGET_TRS]ECL_TAB='©WIZGET(TARGET)');
@wizRpl(application[TARGET_TRS]COST_TAB='©WIZGET(TARGET)');
@wizRpl(application[TARGET_TRS]ALT_TAB='PAL');

@wizRpl(application[AUTO_UPDATE]DOWNLOAD_HELP=1);
@wizRpl(application[AUTO_UPDATE]DOWNLOAD_PROGRAMS=1);
@wizRpl(application[AUTO_UPDATE]DOWNLOAD_OPTIONS=1);
@wizRpl(application[AUTO_UPDATE]DOWNLOAD_SAMPLES=1);
@wizRpl(application[AUTO_UPDATE]DOWNLOAD_BLOCKING=1);

@dbHot(application.ini,set,application[*);
