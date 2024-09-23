# rtl8192eu-20220929
RTL8192EU Linux Driver v5.11.2.3-20-20220929 FPV Mod 

Download pre-built OpenIPC firmware with this driver integrated [here](https://github.com/libc0607/openipc-firmware/releases/tag/latest) to help test.  

Original driver from Realtek: [RTL8192EU_linux_v5.11.2.3-20-gbf6f4ca0d_COEX20171113-0047.20220929.tar.gz](https://github.com/libc0607/rtl8192eu-20220929/blob/50756de1c6fc38d7da060d29b9de56295bf995e0/doc/RTL8192EU_linux_v5.11.2.3-20-gbf6f4ca0d_COEX20171113-0047.20220929.tar.gz)  
Datasheet of BL-M8192EU9 (The only brand new 2.4GHz Wi-Fi module with 2x >1W PAs you can find now): [BL-M8192EU9_datasheet_V1.0.1.pdf](https://github.com/libc0607/rtl8192eu-20220929/blob/50756de1c6fc38d7da060d29b9de56295bf995e0/doc/BL-M8192EU9_datasheet_V1.0.1.pdf)   

Tested:  
 - Build on kernel 6.5
 - TX power unlocked (same as the 8812eu driver)
 - Monitor & injection, 802.11b(CCK)/g/n(with STBC/LDPC) rates all works well

Not sure if it's working: 
 - EDCCA patch (2.4GHz is already so noisy)

Not working: 
 - 5M/10M Bandwidth
 - the 4k MTU patch (will cause USB reset and I don't know why)
 - unlocking center frequency (phy_SwChnl8192E() has weird behaviors -- chn 19 = 2502MHz, but chn 20 = 2277 MHz. wtf?)
 - ...

To-Do: 
 - Test with OpenIPC  
