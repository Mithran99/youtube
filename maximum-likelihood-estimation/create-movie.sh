# Subscribe to my channel, share and like my videos at
# http://youtube.com/tkorting
#
# Feel free to use and share this code.
#
# Thales Sehn Körting

# this script allows to create a .mov file after crating png steps
# run octave with main file
octave main.m

# produce animation with output
rm -f animation_mle.mov
ffmpeg -f image2 -pattern_type glob -i "animation/mle*.png" -r 25 -b 50000000 -filter:v "setpts=0.5*PTS" -an animation_mle.mov
