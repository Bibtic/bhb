# Set this to the root of your project when deployed:
http_path = "/"
sass_dir = "_source/sass"
css_dir = "assets/css"
images_dir = "assets/img"
javascripts_dir = "assets/js"
fonts_dir = "assets/fonts"

environment = :development
 
if environment == :development
  puts "!!*!! Running in development mode..."
  line_comments = true
  sass_options = { :debug_info => true }
  output_style = :expanded
  disable_warnings = false
elsif environment == :production
  puts "[[P]] Running in production mode..."
  disable_warnings = true
  output_style = :compressed
  line_comments = false
else
  puts "???? Running in an unknown mode..."
end

relative_assets = true