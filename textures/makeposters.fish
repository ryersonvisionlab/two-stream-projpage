mkdir tmp
mkdir posters
for f in (ls *.mp4)
  convert $f "tmp/frame_%06d.jpeg"
  set name (string replace .mp4 '' $f)
  mv tmp/frame_000000.jpeg posters/$name\_output.jpeg
  rm tmp/*
end
rm -rf tmp
