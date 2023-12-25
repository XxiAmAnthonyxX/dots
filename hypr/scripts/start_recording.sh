cd ~/recordings

wf-recorder -a -g "$(slurp)" -f './recording_'"$(date '+%Y_%m_%_d..%H.%M.%S')"'.mp4'
