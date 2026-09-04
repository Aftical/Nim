import std/rdstdin
import std/strutils
import std/terminal
import std/random
randomize()

let snack_list = @[
  "potato chip",
  "cake",
  "parfait fruit",
  "candy",
  "milkshake"
]

while true:

  let item = snack_list[rand(0..4)]
  let item1 = snack_list[rand(0..4)]

  let num = rand(1..5)
  let num1 = rand(1..5)

  styledEcho fgMagenta, (
    "nii~ nii~ onii-chan! today Mochi-san have " &
    $num & " " & item & " and " & $num1 & " " & item1 & "!"
  )
  styledEcho fgCyan, "How many snack does Mochi-san have?"

  let strInput = readLineFromStdin("=> ")
  if strInput == "":
    styledEcho fgRed, "nii~ nii~ Mochi-san need number!!"
    continue

  var intInput: int
  try:
    let intInput = strInput.parseInt()
  except ValueError:
    styledEcho fgRed, "nii~ nii~ Mochi-san need number!!"
    continue

  let Input = intInput(strInput)
  let answer = num + num1

  if Input == answer:
    styledEcho fgYellow, "Yay!! correct onii-chan!!"
  else:
    styledEcho fgRed, "nii~ nii~ onii-chan failed elementary school math? heehee..."
    styledEcho fgRed, "it's " & $answer & " onii-chan!"

  styledEcho fgCyan, "wanna play again? (yes/no)"
  let replay = readLineFromStdin("=> ").toLowerAscii()

  if replay == "no":
    styledEcho fgGreen, "see ya nii~ nii~"
    break
  elif replay == "yes":
    continue
  elif replay == "":
    styledEcho fgGreen, "press enter = play again :3"
    continue
  else:
    styledEcho fgGreen, "do nothing = play again :3"
