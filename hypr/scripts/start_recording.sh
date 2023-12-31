
cd ~/recordings

recording='./recording_'"$(date '+%Y_%m_%_d..%H.%M.%S')"'.mp4'

wf-recorder -a -g "$(slurp)" -f './recording_'"$(date '+%Y_%m_%_d..%H.%M.%S')"'.mp4'

swappy -f $recording
