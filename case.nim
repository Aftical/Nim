import std/rdstdin
import std/strutils
import std/terminal

while true:
  styledEcho fgRed, "nii~ nii~ onii-chan have snack?"
  let input = readLineFromStdin("=> ")
  
  case input.toLowerAscii()
    of "potato chip", "chips":
      styledEcho fgYellow, "Mochi gonna steal all of that!!"
    of "cake", "cupcake":
      styledEcho fgCyan, "cake? heehee... 90% is for Mochi and 10% is also for Mochi :3"
    else:
      styledEcho fgMagenta, "eh? what's that?"
