#!/bin/bash

hidewindow() {
  if ((!_o[nohide])); then
    if [[ -z ${i3list[TWP]} ]]; then
      # send window to the next free workspace (not the scratchpad!)
      o_ws=$(i3-msg -t get_workspaces  | jq '.[] | .num' | tail -n 1)
      n_ws=`expr $o_ws + 1`
      if [[ $n_ws = "1" ]] || [[ $n_ws = "2" ]] || [[ $n_ws = "3" ]] || [[ $n_ws = "4" ]]; then
        n_ws=9
      fi
      if [[ $n_ws = "9" ]] ; then
        n_ws=`expr $n_ws + 1`
      fi
      messy "[con_id=${i3list[TWC]}]" move to workspace $n_ws
      i3var set "hidden${i3list[TWC]}" "${i3list[TWF]}"
    else
      # if it is handled by i3fyra  hide the (A|B|C|D) container
      i3fyra --force --hide "${i3list[TWP]}" "${_pass_array[@]}" 
    fi

   ((_o[FORCE])) && [[ ${_command[*]} ]] && run_command

  else

   ((_o[force] + _o[FORCE] > 0)) && [[ ${_command[*]} ]] && run_command
  fi
}
