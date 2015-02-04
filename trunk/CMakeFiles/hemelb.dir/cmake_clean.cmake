FILE(REMOVE_RECURSE
  "CMakeFiles/hemelb"
  "CMakeFiles/hemelb-complete"
  "hemelb-prefix/src/hemelb-stamp/hemelb-install"
  "hemelb-prefix/src/hemelb-stamp/hemelb-mkdir"
  "hemelb-prefix/src/hemelb-stamp/hemelb-download"
  "hemelb-prefix/src/hemelb-stamp/hemelb-update"
  "hemelb-prefix/src/hemelb-stamp/hemelb-patch"
  "hemelb-prefix/src/hemelb-stamp/hemelb-configure"
  "hemelb-prefix/src/hemelb-stamp/hemelb-build"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/hemelb.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
