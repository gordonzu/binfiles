#! /usr/bin/ruby

sublime = '/home/xulu/.config/sublime-text-2/Packages/Theme\ -\ Default/Default.sublime-theme'
sublime2 = '/home/xulu/.config/sublime-text-2/Packages/Theme\ -\ Default/Default.sublime-theme2'
sublime_2 = '/home/xulu/.config/sublime-text-2/Packages/Theme\ -\ Default/Default.sublime-theme_2'

if File.exist?(sublime2) 
  %x(mv #{sublime} #{sublime_2})
  %x(mv #{sublime2} #{sublime})
else
  %x(mv #{sublime} #{sublime2})
  %x(mv #{sublime_2} #{sublime})
end  






