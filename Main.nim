import std/rdstdin
import std/strutils

while true:

  echo "what's onii-chan favorite snack?"
  let snack = readLineFromStdin("=> ")
  
  echo "how many onii-chan have? "
  let amount = readLineFromStdin("=> ")
  
  echo (
    "so... onii-chan have " &
    snack & "? can Mochi have some?"
  )
  let share_snack = readLineFromStdin("=> ")
  
  if share_snack == "no":
    echo (
      "hmph... baka onii-chan!! you have " &
      amount & " " & snack &
      " and won't share!!!"
    )
  elif share_snack == "yes":
    echo "YAY~! Mochi loves onii-chan 3000! (⁄ ⁄>⁄ ▽⁄<⁄ ⁄)"
  else:
    echo "what?"

  echo "wanna play again onii-chan?"
  let replay = readLineFromStdin("=> ").toLowerAscii()
  if replay == "no":
    echo "see ya!"
    break
  elif replay == "yes":
    continue
  else:
    echo "uhee~?"
    break



