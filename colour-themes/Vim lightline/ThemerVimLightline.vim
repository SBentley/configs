

  
  if &background == 'dark'
    
  let s:shade0 = "#161c1f"
  let s:shade1 = "#303638"
  let s:shade2 = "#4b4f51"
  let s:shade3 = "#65696a"
  let s:shade4 = "#808284"
  let s:shade5 = "#9a9c9d"
  let s:shade6 = "#b5b5b6"
  let s:shade7 = "#cfcfcf"
  let s:accent0 = "#efa6a2"
  let s:accent1 = "#50cacd"
  let s:accent2 = "#e0af85"
  let s:accent3 = "#5accaf"
  let s:accent4 = "#74c3e4"
  let s:accent5 = "#ccaced"
  let s:accent6 = "#e6a3dc"
  let s:accent7 = "#a3b8ef"
  
  endif
  

  
  if &background == 'light'
    
  let s:shade0 = "#ffffff"
  let s:shade1 = "#dbdbdb"
  let s:shade2 = "#b6b6b6"
  let s:shade3 = "#929292"
  let s:shade4 = "#6d6d6d"
  let s:shade5 = "#494949"
  let s:shade6 = "#242424"
  let s:shade7 = "#000000"
  let s:accent0 = "#000000"
  let s:accent1 = "#000000"
  let s:accent2 = "#000000"
  let s:accent3 = "#000000"
  let s:accent4 = "#000000"
  let s:accent5 = "#000000"
  let s:accent6 = "#000000"
  let s:accent7 = "#000000"
  
  endif
  

  let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
  let s:p.normal.left = [ [ s:shade1, s:accent5 ], [ s:shade7, s:shade2 ] ]
  let s:p.normal.right = [ [ s:shade1, s:shade4 ], [ s:shade5, s:shade2 ] ]
  let s:p.inactive.right = [ [ s:shade1, s:shade3 ], [ s:shade3, s:shade1 ] ]
  let s:p.inactive.left =  [ [ s:shade4, s:shade1 ], [ s:shade3, s:shade0 ] ]
  let s:p.insert.left = [ [ s:shade1, s:accent3 ], [ s:shade7, s:shade2 ] ]
  let s:p.replace.left = [ [ s:shade1, s:accent1 ], [ s:shade7, s:shade2 ] ]
  let s:p.visual.left = [ [ s:shade1, s:accent6 ], [ s:shade7, s:shade2 ] ]
  let s:p.normal.middle = [ [ s:shade5, s:shade1 ] ]
  let s:p.inactive.middle = [ [ s:shade4, s:shade1 ] ]
  let s:p.tabline.left = [ [ s:shade6, s:shade2 ] ]
  let s:p.tabline.tabsel = [ [ s:shade6, s:shade0 ] ]
  let s:p.tabline.middle = [ [ s:shade2, s:shade4 ] ]
  let s:p.tabline.right = copy(s:p.normal.right)
  let s:p.normal.error = [ [ s:accent0, s:shade0 ] ]
  let s:p.normal.warning = [ [ s:accent2, s:shade1 ] ]

  let g:lightline#colorscheme#ThemerVimLightline#palette = lightline#colorscheme#fill(s:p)

  