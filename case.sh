#!/bin/bash
OS=$(uname -s)
case "$OS" in
Linux*)
           echo "You are running Linux."
     ;;
     Darwin*)
          echo "You are running macOS."
     ;;
     MINGW*)
     echo "You are running Windows (using Git Bash or similar)."
     ;;
     *)
           echo "Unknown operating system."
       ;;
    esac

