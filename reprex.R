if(dir.exists("directory_with_perms_500/")) {
  unlink("directory_with_perms_500", force = TRUE, recursive = TRUE)
}
dir.create("directory_with_perms_500/", mode = "500")



# Problem: instead of going to the `RENV_PATHS_CACHE` (`directory_with_500/`)
# `glue` gets installed directly to `renv/library/...` without a
# message or warning.
renv::install("glue")
system("ls -lah renv/library/R-4.2/x86_64-pc-linux-gnu/ | grep glue")
