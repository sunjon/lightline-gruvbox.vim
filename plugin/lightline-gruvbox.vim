" File: lightline-gruvbox.vim
" Description: lightline.vim theme for gruvbox colorscheme
" Author: shinchu <shinchu@outlook.com>
" Source: https://github.com/shinchu/lightline-gruvbox

let s:is_dark=(&background == 'dark')

if s:is_dark
  let s:mono0   = '#202020'
  let s:c_mono0 = 235

  let s:mono1   = '#2b2b2b'
  let s:mono2   = '#3c3836'
  let s:mono3   = '#3d3d3d'
  let s:mono4   = '#504945'
  let s:mono5   = '#665c54'
  let s:mono6   = '#7c6f64'
  let s:mono7   = '#928374'
  let s:mono8   = '#bdae93'

  let s:c_mono1 = 237
  let s:c_mono2 = 239
  let s:c_mono3 = 241
  let s:c_mono4 = 243
  let s:c_mono5 = 245

  let s:red      = '#cc241d'
  let s:green    = '#b8bb26'
  let s:blue     = '#83a598'
  let s:orange   = '#d9a20e'
  let s:c_red    = 167
  let s:c_green  = 142
  let s:c_blue   = 109
  let s:c_orange = 208
endif

let s:p = {
  \ 'normal':   {},
  \ 'inactive': {},
  \ 'insert':   {},
  \ 'replace':  {},
  \ 'visual':   {},
  \ 'tabline':  {}
  \ }

let s:p.normal.middle = [
  \ [s:mono6, s:mono1, s:c_mono4, s:c_mono1]]

let s:p.normal.left = [
  \ [s:mono0, s:mono7, s:c_mono0, s:c_green],
  \ [s:mono8, s:mono3, s:c_mono5, s:c_mono3]]

let s:p.normal.right = [
  \ [s:mono0, s:mono7, s:c_mono0, s:c_mono4],
  \ [s:mono8, s:mono3, s:c_mono0, s:c_mono4]]

let s:p.inactive.middle = [
  \ [s:mono8, s:mono1, s:c_mono4, s:c_mono2]]
let s:p.inactive.right = [
  \ s:p.inactive.middle[0],
  \ s:p.inactive.middle[0]]
let s:p.inactive.left = [
  \ s:p.inactive.middle[0],
  \ s:p.inactive.middle[0]]

let s:p.insert.left = [
  \ [s:mono0, s:blue, s:c_mono0, s:c_blue],
  \ s:p.normal.left[1]]
let s:p.replace.left = [
  \ [s:mono0, s:red, s:c_mono0, s:c_red],
  \ s:p.normal.left[1]]
let s:p.visual.left = [
  \ [s:mono0, s:orange, s:c_mono0, s:c_orange],
  \ s:p.normal.left[1]]

" tabline
let s:p.tabline.middle = [
  \ [s:mono6, s:mono1, s:c_mono0, s:c_mono4]]
let s:p.tabline.right = [
  \ [s:blue, s:mono1, s:c_mono4, s:c_mono1],
  \ [s:mono0, s:mono6, s:c_mono0, s:c_mono4]]
let s:p.tabline.left = [
  \ [s:mono8, s:mono3, s:c_mono4, s:c_mono1]]
let s:p.tabline.tabsel = [
  \ [s:mono0, s:mono8, s:c_mono5, s:c_mono0]]

let g:lightline#colorscheme#gruvbox#palette = s:p
