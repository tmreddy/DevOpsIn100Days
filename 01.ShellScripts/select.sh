#!/bin/bash
echo "Choose your favorite fruit:"
   select fruit in apple banana cherry quit; do
        case "$fruit" in
            apple|banana|cherry)
                echo "You selected $fruit."
                ;;
            quit)
                echo "Exiting."
                break
                ;;
            *)
                echo "Invalid choice."
                ;;
     esac
 done

