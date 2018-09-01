FbTerm(1)                                                         FbTerm User Manual                                                        FbTerm(1)

NNAAMMEE
       FbTerm - a fast Frame Buffer based TERMinal emulator for linux

SSYYNNOOPPSSIISS
       ffbbtteerrmm [_o_p_t_i_o_n_s] [--] [_c_o_m_m_a_n_d [_a_r_g_u_m_e_n_t_s]]

DDEESSCCRRIIPPTTIIOONN
       FbTerm is a fast terminal emulator for linux with frame buffer device or VESA video card. Features include:

         * mostly as fast as terminal of linux kernel while accelerated scrolling is enabled
         * select font with fontconfig and draw text with freetype2, same as Qt/Gtk+ based GUI apps
         * dynamically create/destroy up to 10 windows initially running default shell
         * record scroll-back history for every window
         * auto-detect current locale and convert text encoding, support double width scripts like Chinese, Japanese etc
         * switch between configurable additional text encodings with hot keys on the fly
         * copy/past selected text between windows with mouse when gpm server is running
         * change the orientation of screen display, a.k.a. screen rotation
         * lightweight input method framework with client-server architecture
         * background image for eye candy

OOPPTTIIOONNSS
       _c_o_m_m_a_n_d  [_a_r_g_u_m_e_n_t_s]  may be given to override the built-in choice of shell program. Normally FbTerm checks the _S_H_E_L_L variable. If that is not
       set, it tries to use the user's login shell program specified in the password file. If that is not set, /bin/sh will be used. You  should  use
       the _-_- argument to separate FbTerm's options from the arguments supplied to the _c_o_m_m_a_n_d.

       FbTerm  first  uses option value specified in command line arguments, then in the configure file _$_H_O_M_E_/_._f_b_t_e_r_m_r_c.  If that file doesn't exist,
       FbTerm will create it with default options on startup.

       --hh,, ----hheellpp
              display the help and exit

       --VV,, ----vveerrssiioonn
              display FbTerm version and exit

       --vv,, ----vveerrbboossee
              display extra FbTerm's information

       --nn,, ----ffoonntt--nnaammeess==_t_e_x_t
              specify font family names

       --ss,, ----ffoonntt--ssiizzee==_n_u_m
              specify font pixel size

       ----ffoonntt--wwiiddtthh==_n_u_m
              force font width

       ----ffoonntt--hheeiigghhtt==_n_u_m
              force font height

       --ff,, ----ccoolloorr--ffoorreeggrroouunndd==_n_u_m
              specify foreground color

       --bb,, ----ccoolloorr--bbaacckkggrroouunndd==_n_u_m
              specify background color

       --ee,, ----tteexxtt--eennccooddiinnggss==_t_e_x_t
              specify additional text encodings

       --aa,, ----aammbbiigguuoouuss--wwiiddee
              treat ambiguous width characters as wide

       --rr,, ----ssccrreeeenn--rroottaattee==_n_u_m
              specify the orientation of screen display

       --ii,, ----iinnppuutt--mmeetthhoodd==_t_e_x_t
              specify input method program

       ----ccuurrssoorr--sshhaappee==_n_u_m
              specify default cursor shape

       ----ccuurrssoorr--iinntteerrvvaall==_n_u_m
              specify cursor flash interval

       ----vveessaa--mmooddee==_n_u_m
              specify VESA video mode

       ----vveessaa--mmooddee==lliisstt
              display available VESA video modes

       see comments in _$_H_O_M_E_/_._f_b_t_e_r_m_r_c for details of these options.

SSHHOORRTTCCUUTT SSUUMMMMAARRYY
       keyboard:
         CTRL_ALT_E:    exit from FbTerm
         CTRL_ALT_C:    create a new window
         CTRL_ALT_D:    destroy current window
         CTRL_ALT_1:    switch to window 1
         CTRL_ALT_2:    switch to window 2
         CTRL_ALT_3:    switch to window 3
         CTRL_ALT_4:    switch to window 4
         CTRL_ALT_5:    switch to window 5
         CTRL_ALT_6:    switch to window 6
         CTRL_ALT_7:    switch to window 7
         CTRL_ALT_8:    switch to window 8
         CTRL_ALT_9:    switch to window 9
         CTRL_ALT_0:    switch to window 10
         SHIFT_LEFT:    switch to previous window
         SHIFT_RIGHT:   switch to next window
         SHIFT_PAGEUP:    history scroll up
         SHIFT_PAGEDOWN:  history scroll down
         CTRL_ALT_F1:                 switch to encoding of current locale
         CTRL_ALT_F2 to CTRL_ALT_F6:  switch to additional encodings
         CTRL_SPACE:    toggle input method
         CTRL_ALT_K:    kill input method server

       mouse:
         move when left button down:      select text
         double click with left button:   auto select text
         click with right button:         paste selected text

       Sometimes above actions will not work, please try to redo them with shift key holding down.

FFRRAAMMEE BBUUFFFFEERR DDEEVVIICCEE
       Before executing FbTerm, make sure there is a frame buffer device in your system, and you have  read/write  access  right  with  it.  Normally
       FbTerm tries to open /dev/fb0 and /dev/fb/0, environment variable "_F_R_A_M_E_B_U_F_F_E_R" may be used to override this built-in behavior.

VVEESSAA VVIIDDEEOO DDEEVVIICCEE
       From  version 1.6, FbTerm adds VESA video card support. By default, FbTerm tries frame buffer device first, if failure, then tries to use VESA
       device with highest resolution and color depth. option "_v_e_s_a_-_m_o_d_e" may be given to force only open VESA device with the specified video  mode.
       To see available video modes for your VESA card, execute "ffbbtteerrmm ----vveessaa--mmooddee==lliisstt".

       Attention: 1) VESA support requires root privilege to work; 2) do not force to use VESA device on the system with frame buffer device enabled,
       they maybe conflict with each other.

FFOONNTT
       FbTerm invokes fontconfig to get a font list, if the first font doesn't contain the glyph for the rendering  character,  it  will  try  second
       font, then the third, ... and so on, user can see this ordered font list with "ffbbtteerrmm --vv".

       If  you  don't  like  the  fonts  selected by FbTerm, execute "fc-list" to get available fonts, choose favorites as the value of option "_f_o_n_t_-
       _n_a_m_e_s". You may also modify the configure file of fontconfig, which will change the behavior of all programs based on fontconfig!

TTEEXXTT EENNCCOODDIINNGG
       By using iconv, FbTerm converts other encodings to internal encoding UTF-8. On startup, FbTerm  checks  variable  _L_C___C_T_Y_P_E  to  determine  the
       default  text  encoding, which is binded to shortcut CTRL_ALT_F1.  User can specify up to 5 additional encodings with option "_t_e_x_t_-_e_n_c_o_d_i_n_g_s",
       for example, as a Chinese user, you set "text-encodings=gbk,big5", shortcut CTRL_ALT_F2 will bind to gbk, and CTRL_ALT_F3 bind to big5.

       In a number of CJK encodings there are ambiguous width characters which have a width of either narrow or wide  depending  on  the  context  of
       their use. By default, FbTerm treats them as narrow width characters, option "_a_m_b_i_g_u_o_u_s_-_w_i_d_e" may be used to change the behavior.

BBAACCKKGGRROOUUNNDD IIMMAAGGEE
       FbTerm  doesn't  load and parse any image file with various formats directly, instead it takes a screen shot of frame buffer device on startup
       if variable _F_B_T_E_R_M___B_A_C_K_G_R_O_U_N_D___I_M_A_G_E is defined, then uses this screen shot as the background for text rendering. In order to enable background
       image support, user should first put a image to frame buffer device with a image viewer. A wrapper script using fbv is listed below:

           ##!!//bbiinn//bbaasshh

           ## ffbbtteerrmm--bbii:: aa wwrraappppeerr ssccrriipptt ttoo eennaabbllee bbaacckkggrroouunndd iimmaaggee wwiitthh ffbbtteerrmm
           ## uussaaggee:: ffbbtteerrmm--bbii //ppaatthh//ttoo//iimmaaggee ffbbtteerrmm--ooppttiioonnss

           eecchhoo --nnee ""\\ee[[??2255ll"" ## hhiiddee ccuurrssoorr

           ffbbvv --cciiuukkeerr ""$$11"" <<<< EEOOFF
           qq
           EEOOFF

           sshhiifftt
           eexxppoorrtt FFBBTTEERRMM__BBAACCKKGGRROOUUNNDD__IIMMAAGGEE==11
           eexxeecc ffbbtteerrmm ""$$@@""

       Attention:  1)  do not enable background image on frame buffer device with 8bpp depth, because FbTerm changes color map table for correct text
       rendering; 2) if the screen shot is different from the original image, try to use a fast scrolling disabled frame buffer device.

225566 CCOOLLOORR EEXXTTEENNSSIIOONN
       FbTerm supports xterm's 256 color mode extension. The first 16 colors are the default terminal colors. Additionally,  there's  a  6x6x6  color
       cube,  and  24  grayscale  tones.  But  xterm's 256 color escape sequences conflict with the linux sequences implemented by FbTerm, so private
       escape sequences were introduced to support this feature:

           EESSCC [[ 11 ;; nn }}                   sseett ffoorreeggrroouunndd ccoolloorr ttoo nn ((00 -- 225555))
           EESSCC [[ 22 ;; nn }}                   sseett bbaacckkggrroouunndd ccoolloorr ttoo nn ((00 -- 225555))
           EESSCC [[ 33 ;; nn ;; rr ;; gg ;; bb }}       sseett ccoolloorr nn ttoo ((rr,, gg,, bb)) ,,  nn,, rr,, gg,, bb aallll iinn ((00 -- 225555))

       A new terminfo database entry named "fbterm" was added to use these private sequences, all program based on terminfo should work with it.   By
       default, FbTerm sets environment variable "TERM" to value "linux", user need run "TERM=fbterm /path/to/program" to enable 256 color mode.

IINNPPUUTT MMEETTHHOODD
       Instead  of adding input method directly in FbTerm, a client-server based input method framework is designed to do this work. FbTerm acts as a
       client, standalone IM program as a server, and they run in separated processes.

       As a normal IM user, you should install a IM program written for FbTerm, and specify it as the value of option "_i_n_p_u_t_-_m_e_t_h_o_d".  CTRL_SPACE  is
       the shortcut to activate/deactivate input method. And CTRL_ALT_K may be used to kill the IM program when it has freezed.

SSEECCUURRIITTYY NNOOTTEESS
       FbTerm tries to change linux kernel key map table to setup shortcuts, which requires _S_Y_S___T_T_Y___C_O_N_F_I_G capability since kernel version 2.6.15. It
       means FbTerm should be a setuid 0 program to allow non-root users to use shortcuts. FbTerm only switches to root  privilege  temporarily  when
       changing  key  map table, we believe it's pretty much free from security problems.  If you really don't like this and have a linux kernel with
       file system capabilities enabled, which allow user to give binaries a subset of root's powers without using setuid 0 (official  kernel  2.6.27
       includes it), you can run command "ssuuddoo sseettccaapp ''ccaapp__ssyyss__ttttyy__ccoonnffiigg++eepp'' //ppaatthh//ttoo//ffbbtteerrmm".

       FbTerm redirects /dev/tty0 output to the pseudo terminal of current sub-window. In linux before version 2.6.10, anybody can do this as long as
       the output was not redirected yet; since version 2.6.10, only root or a process with the _C_A_P___S_Y_S___A_D_M_I_N capability may do this.  You should  do
       similar work with above ones for FbTerm to enable this feature for non-root users.

PPEERRFFOORRMMAANNCCEE
       According test result, FbTerm spends more than 95% time on painting screen. Speedup painting will significantly increase performance. Here are
       some suggestions for frame buffer device:

         * Enable fast scrolling on frame buffer device. The visible screen will be just a window of the video memory, when  scrolling,  FbTerm  only
       change the start of window, no need to repaint the whole screen.

         *  On  Intel  P6  family processors the Memory Type Range Registers (MTRRs) may be used to control processor access to memory ranges. If you
       have video card on a PCI or AGP bus, enabling write-combining allows bus write transfers to be combined into a larger transfer before bursting
       over the PCI/AGP bus. This can increase performance of FbTerm's paint operations.

       Maybe  you  need  to  enable them manually for your video card. For example, by default fast scrolling and write-combining are all disabled on
       general VESA frame buffer device, GRUB/LILO configure file should be modified to enable them.  A GRUB example is showed below:

       title Ubuntu
           root (hd0,0)
           kernel /boot/vmlinuz ro root=LABEL=UBUNTU splash vga=0x317 vviiddeeoo==vveessaaffbb::yywwrraapp,,mmttrrrr::33
           initrd /boot/initrd.img

       You may check fast scrolling status with "ffbbtteerrmm --vv", a message with "scrolling: redraw" means fast scrolling is disabled, otherwise enabled.

AAUUTTHHOORR
       Written by dragchan.

RREEPPOORRTTIINNGG BBUUGGSS
       Please submit bug reports to <hhttttpp::////ccooddee..ggooooggllee..ccoomm//pp//ffbbtteerrmm//iissssuueess>.

CCOOPPYYRRIIGGHHTT
       Copyright © 2008-2010 dragchan.  License GPLv2: GNU GPL version 2 or later <http://gnu.org/licenses/gpl.html>.
       This is free software: you are free to change and redistribute it.  There is NO WARRANTY, to the extent permitted by law.

FbTerm 1.7                                                           October 2010                                                           FbTerm(1)
