

#!/bin/bash

#NZAP
#yellow start 
	YS="\e[1;33m"
#blue start 
	BS="\e[0;34m"
#color end
	CE="\e[0m"
#red start
	RS="\e[1;31m"
#black start
	BLS="\e[0;30m"
#dark gray start
	DGYS="\e[1;30m"                                                                
#light blue start
	LBS="\e[1;34m"
#green start
	GNS="\e[0;32m"
#light green start
	LGNS="\e[1;32m"
#cyan start
	CYS="\e[0;36m"
#light cyan start
	LCYS="\e[1;36m"
#light red start
	DRS="\e[0;31m"
#purple start
	PS="\e[0;35m"
#light purple start
	LPS="\e[1;35m"
#brown start
	BRS="\e[0;33m"
#light gray start
	LGYS="\e[0;37m"
#white start
	WHS="\e[1;37m"
if [[ -f "$LPATH"/settings/logocolor.txt ]]
	then
		read COL < "$LPATH"/settings/logocolor.txt
	else
		COL="$YS"
	fi

	
echo -e "$RS DEVELOPMENT STAGE v0.1 WELCOME TO NZAP -AUTOMATED NMAP SCANNER- SUMEET MOTWANI $CE                 "
echo -e "$COL                                          z                                $CE"
echo -e "$COL┈┈╱▔▔▔▔▔╲┈┈┈HM┈HM		nnnnnn     zz             aaa      ppppppp $CE"
echo -e "$COL┈╱┈┈╱▔╲╲╲▏┈┈┈HMMM		nnn   n     zzzz         aa aa     ppppppp $CE"
echo -e "$COL╱┈┈╱━╱▔▔▔▔▔╲━╮┈┈		nnn   nn      zzzzzz    aaa aaa    ppp   p $CE"
echo -e "$COL▏┈▕┃▕╱▔╲╱▔╲▕╮┃┈┈		nnn   nn        zzzzzz aaa a aaa   ppppppp $CE" 
echo -e "$COL▏┈▕╰━▏▊▕▕▋▕▕━╯┈┈		nnn   nn       zzzzzz aaa aaa aaa  ppp     $CE"
echo -e "$COL╲┈┈╲╱▔╭╮▔▔┳╲╲┈┈┈		nnn   nn     zzzzz   aaaa     aaaa ppp     $CE"
echo -e "$COL┈╲┈┈▏╭━━━━╯▕▕┈┈┈ 	 	           zzzz                           $CE"
echo -e "$COL┈┈╲┈╲▂▂▂▂▂▂╱╱┈┈┈                            zzz                          $CE "
echo -e "$COL┈┈┈┈▏┊┈┈┈┈┊┈┈┈╲┈                              zzz                         $CE"
echo -e "$COL┈┈┈┈▏┊┈┈┈┈┊▕╲┈┈╲             		        zz			   $CE"
echo -e "$COL┈╱▔╲▏┊┈┈┈┈┊▕╱▔╲▕				   z			   $CE"
echo -e "$COL┈▏ ┈┈╰┈┈┈┈╯┈┈┈▕▕		 		     		           $CE"
echo -e "$COL┈╲┈┈┈╲┈┈┈┈╱┈┈┈╱┈╲							   $CE"
echo -e "$COL┈┈╲┈┈▕▔▔▔▔▏┈┈╱╲╲╲▏					           $CE"
echo -e "$COL┈╱▔┈┈▕┈┈┈┈▏┈┈▔╲▔▔							   $CE"
echo -e "$COL┈╲▂▂▂╱┈┈┈┈╲▂▂▂╱┈                                                     $CE"





 echo  -e "$RS                              SELECT OUTPUT FORMAT $CE"
echo 1-Display on terminal
echo 2-Save output to a text file 
echo 3-Save output to a xml file 

read format
if [ "$format" = 2 ]
then  echo enter filename.txt  PLEASE USE .txt extension
read name
        fi
if [ "$format" = 3 ]
then  echo enter filename.xml  PLEASE USE .xml extension
read name


        fi


echo -e "$RS                       ENTER IP ADDRESS OR URL OR RANGE $CE"
read ip
echo -e "$LPS enter 1-FIREWALL EVASION $CE"
echo -e "$LBS enter 2-ADVANCED SCANNING FUNCTIONS $CE [RECOMMENDED]"
echo -e "$LCYS enter 3-OS AND VERSION DETECTION SCANS $CE"
echo " enter 4-PING SCAN ONLY"
echo " enter 5-INTENSE SCAN"
echo " enter 6-QUICK SCAN"
echo " enter 7-SIMPLE SCAN"
echo " enter 8-SCAN TOP PORTS"
echo " enter 9-IP Address whois information [ONLY ON TERMINAL]"
echo " enter 10-QUICK TRACEROUTE"
echo " enter 11-SCAN FOR HEARTBLEAD VULN"
echo " enter 12-USE NSE"
echo " enter 13-ONLY DISPLAY OPEN PORTS"
echo " enter 14-DISPLAY HELP AND NMAP VERSION"
echo " enter 15-CUSTOM SCAN [for pros]"
echo "          PRESS CTRL+C TO EXIT"
read userch
firewall()
{
echo CHOOSE FROM THE FOLLOWING FIREWALL EVSION OPTIONS
echo enter 1-FRAGMENT PACKETS
echo enter 2-USE A DECOY
echo enter 3-IDLE ZOMBIE SCAN [YOU MUST HAVE A ZOMBIE ADDRESS FOR THIS SCAN ]
echo enter 4-SPOOF MAC ADDRESS
echo enter 5-SEND BAD CHECKSUMS
echo enter 6-APPEND RANDOM DATA
echo enter 7-MANUALLY SPECIFY A SOURCE PORT
echo enter 8-SCAN WHEN SCANNING IS BLOCKED

read fch

   
         if [ "$format" = 1 ] && [ "$fch" = "1" ]
then  nmap -sS -f -Pn "$ip"
        fi
        
        if [ "$format" = 2 ] && [ "$fch" = "1" ]
then  nmap -sS -f -Pn "$ip" -oN "$name"
        fi
        
         if [ "$format" = 3 ] && [ "$fch" = "1" ]
then  nmap -sS -f -Pn "$ip" -oX "$name"
        fi
        
        
          if [ "$format" = 1 ] && [ "$fch" = "8" ]
then  nmap -sS -Pn "$ip"
        fi
        
        if [ "$format" = 2 ] && [ "$fch" = "8" ]
then  nmap -sS -Pn "$ip" -oN "$name"
        fi
        
         if [ "$format" = 3 ] && [ "$fch" = "8" ]
then  nmap -sS -Pn "$ip" -oX "$name"
        fi
        
        
        
          if [ "$format" = 1 ] && [ "$fch" = "6" ]
then  nmap --data-length 50 "$ip"
        fi
        
        if [ "$format" = 2 ] && [ "$fch" = "6" ]
then  nmap --data-length 50 "$ip" -oN "$name"
        fi
        
         if [ "$format" = 3 ] && [ "$fch" = "6" ]
then  nmap --data-length 50 "$ip" -oX "$name"
        fi
        
        
        
        
          if [ "$format" = 1 ] && [ "$fch" = "2" ]
then  nmap -D RND:20 "$ip"
        fi
        
        if [ "$format" = 2 ] && [ "$fch" = "2" ]
then  nmap -D RND:20 "$ip" -oN "$name"
        fi
        
         if [ "$format" = 3 ] && [ "$fch" = "2" ]
then  nmap -D RND:20 "$ip" -oX "$name"
        fi
        
        
         if [ "$fch" = "7" ]
        then echo enter source port number
        read spn
        fi
          if [ "$format" = 1 ] && [ "$fch" = "7" ]
then  nmap --source-port "$spn" "$ip"
        fi
        
        if [ "$format" = 2 ] && [ "$fch" = "7" ]
then  nmap --source-port "$spn" "$ip" -oN "$name"
        fi
        
         if [ "$format" = 3 ] && [ "$fch" = "7" ]
then  nmap --source-port "$spn" "$ip" -oX "$name"
        fi
        
        
        
  
        if [ "$fch" = "3" ]
        then echo enter zombie ip
        read zombie
        fi
        
        if [ "$format" = 1 ] && [ "$fch" = "3" ]
then  nmap –Pn –p –sI "$zombie" "$ip"
        fi
        
        if [ "$format" = 2 ] && [ "$fch" = "3" ]
then  nmap –Pn –p –sI "$zombie" "$ip" -oN "$name"
        fi
        
         if [ "$format" = 3 ] && [ "$fch" = "3" ]
then  nmap –Pn –p –sI "$zombie" "$ip" -oX "$name"
        fi
        
       
        
        
        
                if [ "$format" = 1 ] && [ "$fch" = "4" ]
then  nmap --spoof-mac Apple "$ip"
        fi
          

        if [ "$format" = 2 ] && [ "$fch" = "4" ]
then  nmap --spoof-mac Apple "$ip" -oN "$name"
        fi
        
         if [ "$format" = 3 ] && [ "fch" = "4" ]
then  nmap --spoof-mac Apple "$ip" -oX "$name"
        fi
        
             
        if [ "$format" = 1 ] && [ "$fch" = "5" ]
then  nmap -sS -p 113 -Pn --badsum "$ip"
        fi
        
        if [ "$format" = 2 ] && [ "$fch" = "5" ]
then  nmap -sS -p 113 -Pn --badsum "$ip" -oN "$name"
        fi
        
         if [ "$format" = 3 ] && [ "$fch" = "5" ]
then  nmap -sS -p 113 -Pn --badsum "$ip" -oX "$name"
        fi
        
       
        

}
advancedscans()
{
echo enter 1-XMAS SCAN
echo enter 2-ACK SCAN
echo enter 3-FIN SCAN
echo enter 4-TCP NULL SCAN
echo enter 5-SCAN UDP PORTS
echo enter 6-STEALTH SCAN
echo enter 7-INTENSE SCAN WITH TCP PORTS MENTIONED
read ach
  if [ "$format" = 1 ] && [ "$ach" = "1" ]
then  nmap -sX "$ip"
        fi
        
        if [ "$format" = 2 ] && [ "$ach" = "1" ]
then  nmap -sX "$ip" -oN "$name"
        fi
        
         if [ "$format" = 3 ] && [ "$ach" = "1" ]
then  nmap -sX "$ip" -oX "$name"
        fi
        
        
        
            
          if [ "$format" = 1 ] && [ "$ach" = "2" ]
then  nmap -sA "$ip"
        fi
        
        if [ "$format" = 2 ] && [ "$ach" = "2" ]
then  nmap -sA "$ip" -oN "$name"
        fi
        
         if [ "$format" = 3 ] && [ "$ach" = "2" ]
then  nmap -sA "$ip" -oX "$name"
        fi
        
        

        
                
         if [ "$format" = 1 ] && [ "$ach" = "3" ]
then  nmap -sF "$ip"
        fi
        
        if [ "$format" = 2 ] && [ "$ach" = "3" ]
then  nmap -sF "$ip" -oN "$name"
        fi
        
         if [ "$format" = 3 ] && [ "$ach" = "3" ]
then  nmap -sF "$ip" -oX "$name"
        fi
        
        
        
        
        
         if [ "$format" = 1 ] && [ "$ach" = "4" ]
then  nmap -sN "$ip"
        fi
        
        if [ "$format" = 2 ] && [ "$ach" = "4" ]
then  nmap -sN "$ip" -oN "$name"
        fi
        
         if [ "$format" = 3 ] && [ "$ach" = "4" ]
then  nmap -sN "$ip" -oX "$name"
        fi
        
        
        if [ "$format" = 1 ] && [ "$ach" = "5" ]
then  nmap -sU "$ip"
        fi
        
        if [ "$format" = 2 ] && [ "$ach" = "5" ]
then  nmap -sU "$ip" -oN "$name"
        fi
        
         if [ "$format" = 3 ] && [ "$ach" = "5" ]
then  nmap -sU "$ip" -oX "$name"
        fi
        
        
        
           if [ "$format" = 1 ] && [ "$ach" = "6" ]
then  nmap -sS -f "$ip"
        fi
        
        if [ "$format" = 2 ] && [ "$ach" = "6" ]
then  nmap -sS -f "$ip" -oN "$name"
        fi
        
         if [ "$format" = 3 ] && [ "$ach" = "6" ]
then  nmap -sS -f "$ip" -oX "$name"
        fi
        
          if [ "$ach" = "7" ]
then echo Enter port numbers for the range
read port1
read port2
        fi
        
        
        
        if [ "$format" = 1 ] && [ "$ach" = "7" ]
then  nmap -p "$port1"-"$port2" -T4 -A -v "$ip"
        fi
        
        if [ "$format" = 2 ] && [ "$ach" = "7" ]
then  nmap -p "$port1"-"$port2" -T4 -A -v "$ip" -oN "$name"
        fi
        
         if [ "$format" = 3 ] && [ "$ach" = "7" ]
then  nmap -p "$port1"-"$port2" -T4 -A -v "$ip" -oX "$name"
        fi
        
        
}

os() {
echo enter 1-OS SCAN
echo enter 2-SERVICE VERSION DETECTION
echo enter 3-RPC SCAN

read os
        
         if [ "$format" = 1 ] && [ "$os" = "1" ]
then  nmap -O "$ip"
        fi
        
        if [ "$format" = 2 ] && [ "$os" = "1" ]
then  nmap -O "$ip" -oN "$name"
        fi
        
         if [ "$format" = 3 ] && [ "$os" = "1" ]
then  nmap -O "$ip" -oX "$name"
        fi
        
        
            if [ "$format" = 1 ] && [ "$os" = "2" ]
then  nmap -sV "$ip"
        fi
        
        if [ "$format" = 2 ] && [ "$os" = "2" ]
then  nmap -sV "$ip" -oN "$name"
        fi
        
         if [ "$format" = 3 ] && [ "$os" = "2" ]
then  nmap -sV "$ip" -oX "$name"
        fi
        
        
                   
         if [ "$format" = 1 ] && [ "$os" = "3" ]
then  nmap --script rpc-grind "$ip"
        fi
        
        if [ "$format" = 2 ] && [ "$os" = "3" ]
then  nmap --script rpc-grind "$ip" -oN "$name"
        fi
        
         if [ "$format" = 3 ] && [ "$os" = "3" ]
then  nmap --script rpc-grind "$ip" -oX "$name"
        fi
        
       
        
}

 if [ "$userch" = 1 ]
 then firewall
 fi
 
  if [ "$userch" = 2 ]
 then advancedscans
 fi
 
  if [ "$userch" = 3 ]
 then os
 fi
 
 
 
 
  if [ "$format" = 1 ] && [ "$userch" = "4" ]
then  nmap -sP "$ip"
        fi
        
        if [ "$format" = 2 ] && [ "$userch" = "4" ]
then  nmap -sP "$ip" -oN "$name"
        fi
        
         if [ "$format" = 3 ] && [ "$userch" = "4" ]
then  nmap -sP "$ip" -oX "$name"
        fi
        
        
        
               if [ "$format" = 1 ] && [ "$userch" = "5" ]
then  nmap -T4 -A -sV "$ip"
        fi
        
        if [ "$format" = 2 ] && [ "$userch" = "5" ]
then  nmap -T4 -A -sV "$ip" -oN "$name"
        fi
        
         if [ "$format" = 3 ] && [ "$userch" = "5" ]
then  nmap -T4 -A -sV "$ip" -oX "$name"
        fi
        
        
        
           
         if [ "$format" = 1 ] && [ "$userch" = "6" ]
then  nmap -F "$ip"
        fi
        
        if [ "$format" = 2 ] && [ "$userch" = "6" ]
then  nmap -F "$ip" -oN "$name"
        fi
        
         if [ "$format" = 3 ] && [ "$userch" = "6" ]
then  nmap -F "$ip" -oX "$name"
        fi
        
        

        if [ "$format" = 1 ] && [ "$userch" = "7" ]
then  nmap "$ip"
        fi
        
        if [ "$format" = 2 ] && [ "$userch" = "7" ]
then  nmap "$ip" -oN "$name"
        fi
        
         if [ "$format" = 3 ] && [ "$userch" = "7" ]
then  nmap "$ip" -oX "$name"
        fi
        
        
        
         
         
          if [ "$format" = 1 ] && [ "$userch" = "8" ]
then  nmap  --top-ports 20 "$ip"
        fi
        
        if [ "$format" = 2 ] && [ "$userch" = "8" ]
then  nmap  --top-ports  20 "$ip" -oN "$name"
        fi
        
         if [ "$format" = 3 ] && [ "$userch" = "8" ]
then  nmap  --top-ports 20 "$ip" -oX "$name"
        fi

        
              if [ "$format" = 1 ] && [ "$userch" = "9" ]
then  whois "$ip"
        fi
        
        if [ "$format" = 2 ] && [ "$userch" = "9" ]
then  whois "$ip"
        fi
        
         if [ "$format" = 3 ] && [ "$userch" = "9" ]
then  whois "$ip"
        fi
        
        
              if [ "$format" = 1 ] && [ "$userch" = "10" ]
then  nmap -sn --traceroute "$ip"
        fi
        
        if [ "$format" = 2 ] && [ "$userch" = "10" ]
then  nmap -sn --traceroute "$ip" -oN "$name"
        fi
        
         if [ "$format" = 3 ] && [ "$userch" = "10" ]
then  nmap -sn --traceroute "$ip" -oX "$name"
        fi
        

        
         if [ "$format" = 1 ] && [ "$userch" = "11" ]
then  nmap -sV -p 443 --script=ssl-heartbleed "$ip"
        fi
        
        if [ "$format" = 2 ] && [ "$userch" = "11" ]
then  nmap -sV -p 443 --script=ssl-heartbleed "$ip" -oN "$name"
        fi
        
         if [ "$format" = 3 ] && [ "$userch" = "11" ]
then  nmap -sV -p 443 --script=ssl-heartbleed "$ip" -oX "$name"
        fi
        
       
        if [ "$format" = 1 ] && [ "$userch" = "13" ]
then  nmap -sV --open"$ip"
        fi
        
        if [ "$format" = 2 ] && [ "$userch" = "13" ]
then  nmap -sV --open "$ip" -oN "$name"
        fi
        
         if [ "$format" = 3 ] && [ "$userch" = "13" ]
then  nmap -sV --open "$ip" -oX "$name"
        fi
        
        
        
         if [ "$userch" = "14" ]
then  nmap -h
      nmap -V
        fi
        
        
         if [ "$userch" = "15" ]
then  echo enter your own script
      read custom
      $custom
              fi
     
   
           if [ "$format" = 1 ] && [ "$userch" = "16" ]
then  nmap -sS -sU -T4 -A -v "$ip"
        fi
        
        if [ "$format" = 2 ] && [ "$userch" = "16" ]
then  nmap -sS -sU -T4 -A -v "$ip" -oN "$name"
        fi
        
         if [ "$format" = 3 ] && [ "$userch" = "16" ]
then  nmap -sS -sU -T4 -A -v "$ip" -oX "$name"
        fi


  
