
#!/bin/bash

#NZAP



echo "  DEVELOPMENT STAGE     WELCOME TO NZAP - AUTOMATED NMAP SCANNER   - SUMEET MOTWANI                  "
echo "                                          z                               "
echo "┈┈╱▔▔▔▔▔╲┈┈┈HM┈HM		nnnnnn     zz             aaa      ppppppp"
echo "┈╱┈┈╱▔╲╲╲▏┈┈┈HMMM		nnn   n     zzzz         aa aa     ppppppp"
echo "╱┈┈╱━╱▔▔▔▔▔╲━╮┈┈		nnn   nn      zzzzzz    aaa aaa    ppp   p"
echo "▏┈▕┃▕╱▔╲╱▔╲▕╮┃┈┈		nnn   nn        zzzzzz aaa a aaa   ppppppp" 
echo "▏┈▕╰━▏▊▕▕▋▕▕━╯┈┈		nnn   nn       zzzzzz aaa aaa aaa  ppp    "
echo "╲┈┈╲╱▔╭╮▔▔┳╲╲┈┈┈		nnn   nn     zzzzz   aaaa     aaaa ppp    "
echo "┈╲┈┈▏╭━━━━╯▕▕┈┈┈ 	 	           zzzz                          "
echo "┈┈╲┈╲▂▂▂▂▂▂╱╱┈┈┈                            zzz                          "
echo "┈┈┈┈▏┊┈┈┈┈┊┈┈┈╲┈                              zzz                        "
echo "┈┈┈┈▏┊┈┈┈┈┊▕╲┈┈╲             		        zz			  "
echo "┈╱▔╲▏┊┈┈┈┈┊▕╱▔╲▕				   z			  "
echo "┈▏ ┈┈╰┈┈┈┈╯┈┈┈▕▕		 		     		          "
echo "┈╲┈┈┈╲┈┈┈┈╱┈┈┈╱┈╲							  "
echo "┈┈╲┈┈▕▔▔▔▔▏┈┈╱╲╲╲▏					          "
echo "┈╱▔┈┈▕┈┈┈┈▏┈┈▔╲▔▔							  "
echo "┈╲▂▂▂╱┈┈┈┈╲▂▂▂╱┈                                                    "


echo  ...............---------SELECT OUTPUT FORMAT-----------..............
echo 1-Display on terminal
echo 2-Save output to a text file 
echo 3-Save output to a xml file 

read format
if [ "$format" = 2 ]
then  echo enter filename.txt  (PLEASE USE .txt extension)
read name
        fi
if [ "$format" = 3 ]
then  echo enter filename.xml  (PLEASE USE .xml extension)
read name
        fi
echo ENTER IP ADDRESS OR URL OR RANGE 
read ip
echo enter 1-PING SCAN
echo enter 2-INTENSE SCAN
echo enter 3-QUICK SCAN
echo enter 4-STEALTH SCAN
echo enter 5-INTENSE SCAN WITH TCP PORTS MENTIONED
echo enter 6-IP Address information
echo enter 7-XMAS SCAN
echo enter 8-ACK SCAN
echo enter 9-OS DETECTION
echo enter 10-FIN SCAN
echo enter 11-TCP NULL SCAN
echo enter 12-SCAN WITH FRAGMENTED SCAN
echo enter 13-QUICK TRACEROUTE
echo enter 14-SCAN UDP PORTS
echo enter 15-SCAN WHEN SCANNING IS BLOCKED
echo enter 16-SERVICE DETECTION
echo enter 17-FAST SCAN
echo enter 18-SCAN FOR HEARTBLEAD VULN.
echo enter 19-ZOMBIE SCAN
echo enter 20-MAC SPOOF
echo enter 21-RPC SCAN
echo enter 22-Send bad checksums
echo enter 23-SIMPLE SCAN
echo        PRESS CTRL+C TO EXIT
read userch
        if [ "$format" = 1 ] && [ "$userch" = "1" ]
then  nmap -sn "$ip"
        fi
        
        if [ "$format" = 2 ] && [ "$userch" = "1" ]
then  nmap -sn "$ip" -oN "$name"
        fi
        
         if [ "$format" = 3 ] && [ "$userch" = "1" ]
then  nmap -sn "$ip" -oX "$name"
        fi
        
        
        
                if [ "$format" = 1 ] && [ "$userch" = "2" ]
then  nmap -T4 -A -v "$ip"
        fi
        
        if [ "$format" = 2 ] && [ "$userch" = "2" ]
then  nmap -T4 -A -v "$ip" -oN "$name"
        fi
        
         if [ "$format" = 3 ] && [ "$userch" = "2" ]
then  nmap -T4 -A -v "$ip" -oX "$name"
        fi
        
        
              if [ "$format" = 1 ] && [ "$userch" = "3" ]
then  nmap -T4 -F "$ip"
        fi
        
        if [ "$format" = 2 ] && [ "$userch" = "3" ]
then  nmap -T4 -F "$ip" -oN "$name"
        fi
        
         if [ "$format" = 3 ] && [ "$userch" = "3" ]
then  nmap -T4 -F "$ip" -oX "$name"
        fi
        
        
        
          if [ "$format" = 1 ] && [ "$userch" = "4" ]
then  nmap -sS "$ip"
        fi
        
        if [ "$format" = 2 ] && [ "$userch" = "4" ]
then  nmap -sS "$ip" -oN "$name"
        fi
        
         if [ "$format" = 3 ] && [ "$userch" = "4" ]
then  nmap -sS "$ip" -oX "$name"
        fi
        
        
        if [ "$userch" = "5" ]
then echo Enter port numbers for the range
read port1
read port2
        fi
        
        
        
        if [ "$format" = 1 ] && [ "$userch" = "5" ]
then  nmap -p "$port1"-"$port2" -T4 -A -v "$ip"
        fi
        
        if [ "$format" = 2 ] && [ "$userch" = "5" ]
then  nmap -p "$port1"-"$port2" -T4 -A -v "$ip" -oN "$name"
        fi
        
         if [ "$format" = 3 ] && [ "$userch" = "5" ]
then  nmap -p "$port1"-"$port2" -T4 -A -v "$ip" -oX "$name"
        fi
        
        
        
              if [ "$format" = 1 ] && [ "$userch" = "6" ]
then  nmap --script=asn-query,whois,ip-geolocation-maxmind "$ip"
        fi
        
        if [ "$format" = 2 ] && [ "$userch" = "6" ]
then  nmap --script=asn-query,whois,ip-geolocation-maxmind "$ip" -oN "$name"
        fi
        
         if [ "$format" = 3 ] && [ "$userch" = "6" ]
then  nmap --script=asn-query,whois,ip-geolocation-maxmind "$ip" -oX "$name"
        fi
        
        
        
        
              
          if [ "$format" = 1 ] && [ "$userch" = "7" ]
then  nmap -sX "$ip"
        fi
        
        if [ "$format" = 2 ] && [ "$userch" = "7" ]
then  nmap -sX "$ip" -oN "$name"
        fi
        
         if [ "$format" = 3 ] && [ "$userch" = "7" ]
then  nmap -sX "$ip" -oX "$name"
        fi
        
        
        
        
        
        
               
          if [ "$format" = 1 ] && [ "$userch" = "8" ]
then  nmap -sA "$ip"
        fi
        
        if [ "$format" = 2 ] && [ "$userch" = "8" ]
then  nmap -sA "$ip" -oN "$name"
        fi
        
         if [ "$format" = 3 ] && [ "$userch" = "8" ]
then  nmap -sA "$ip" -oX "$name"
        fi
        
        
        
         if [ "$format" = 1 ] && [ "$userch" = "9" ]
then  nmap -O "$ip"
        fi
        
        if [ "$format" = 2 ] && [ "$userch" = "9" ]
then  nmap -O "$ip" -oN "$name"
        fi
        
         if [ "$format" = 3 ] && [ "$userch" = "9" ]
then  nmap -O "$ip" -oX "$name"
        fi
        
        
                
         if [ "$format" = 1 ] && [ "$userch" = "10" ]
then  nmap -sF "$ip"
        fi
        
        if [ "$format" = 2 ] && [ "$userch" = "10" ]
then  nmap -sF "$ip" -oN "$name"
        fi
        
         if [ "$format" = 3 ] && [ "$userch" = "10" ]
then  nmap -sF "$ip" -oX "$name"
        fi
        
        
        
        
        
         if [ "$format" = 1 ] && [ "$userch" = "11" ]
then  nmap -sN "$ip"
        fi
        
        if [ "$format" = 2 ] && [ "$userch" = "11" ]
then  nmap -sN "$ip" -oN "$name"
        fi
        
         if [ "$format" = 3 ] && [ "$userch" = "11" ]
then  nmap -sN "$ip" -oX "$name"
        fi
        
        
        
        
           if [ "$format" = 1 ] && [ "$userch" = "12" ]
then  nmap -sS -f "$ip"
        fi
        
        if [ "$format" = 2 ] && [ "$userch" = "12" ]
then  nmap -sS -f "$ip" -oN "$name"
        fi
        
         if [ "$format" = 3 ] && [ "$userch" = "12" ]
then  nmap -sS -f "$ip" -oX "$name"
        fi
        
        
        
        
         if [ "$format" = 1 ] && [ "$userch" = "13" ]
then  nmap -sn --traceroute "$ip"
        fi
        
        if [ "$format" = 2 ] && [ "$userch" = "13" ]
then  nmap -sn --traceroute "$ip" -oN "$name"
        fi
        
         if [ "$format" = 3 ] && [ "$userch" = "13" ]
then  nmap -sn --traceroute "$ip" -oX "$name"
        fi
        
        
        
        
          
           if [ "$format" = 1 ] && [ "$userch" = "14" ]
then  nmap -sS -sU -T4 -A -v "$ip"
        fi
        
        if [ "$format" = 2 ] && [ "$userch" = "14" ]
then  nmap -sS -sU -T4 -A -v "$ip" -oN "$name"
        fi
        
         if [ "$format" = 3 ] && [ "$userch" = "14" ]
then  nmap -sS -sU -T4 -A -v "$ip" -oX "$name"
        fi
        
        
        
        
        
         if [ "$format" = 1 ] && [ "$userch" = "15" ]
then  nmap -sS -f -Pn "$ip"
        fi
        
        if [ "$format" = 2 ] && [ "$userch" = "15" ]
then  nmap -sS -f -Pn "$ip" -oN "$name"
        fi
        
         if [ "$format" = 3 ] && [ "$userch" = "15" ]
then  nmap -sS -f -Pn "$ip" -oX "$name"
        fi
        
        
       
            if [ "$format" = 1 ] && [ "$userch" = "16" ]
then  nmap -sV "$ip"
        fi
        
        if [ "$format" = 2 ] && [ "$userch" = "16" ]
then  nmap -sV "$ip" -oN "$name"
        fi
        
         if [ "$format" = 3 ] && [ "$userch" = "16" ]
then  nmap -sV "$ip" -oX "$name"
        fi
        
       
        
         if [ "$format" = 1 ] && [ "$userch" = "17" ]
then  nmap -F "$ip"
        fi
        
        if [ "$format" = 2 ] && [ "$userch" = "17" ]
then  nmap -F "$ip" -oN "$name"
        fi
        
         if [ "$format" = 3 ] && [ "$userch" = "17" ]
then  nmap -F "$ip" -oX "$name"
        fi
        
        
        
        
        
         if [ "$format" = 1 ] && [ "$userch" = "18" ]
then  nmap -sV -p 443 --script=ssl-heartbleed "$ip"
        fi
        
        if [ "$format" = 2 ] && [ "$userch" = "18" ]
then  nmap -sV -p 443 --script=ssl-heartbleed "$ip" -oN "$name"
        fi
        
         if [ "$format" = 3 ] && [ "$userch" = "18" ]
then  nmap -sV -p 443 --script=ssl-heartbleed "$ip" -oX "$name"
        fi
        
        
        
        if [ "$userch" = "19" ]
        then echo enter zombie ip
        read zombie
        fi
        
        if [ "$format" = 1 ] && [ "$userch" = "19" ]
then  nmap –Pn –p –sI "$zombie" "$ip"
        fi
        
        if [ "$format" = 2 ] && [ "$userch" = "19" ]
then  nmap –Pn –p –sI "$zombie" "$ip" -oN "$name"
        fi
        
         if [ "$format" = 3 ] && [ "$userch" = "19" ]
then  nmap –Pn –p –sI "$zombie" "$ip" -oX "$name"
        fi
        
       
        
        
        
                if [ "$format" = 1 ] && [ "$userch" = "20" ]
then  nmap --spoof-mac Apple "$ip"
        fi
        
        if [ "$format" = 2 ] && [ "$userch" = "20" ]
then  nmap --spoof-mac Apple "$ip" -oN "$name"
        fi
        
         if [ "$format" = 3 ] && [ "$userch" = "20" ]
then  nmap --spoof-mac Apple "$ip" -oX "$name"
        fi
        
        
        
        
          
         if [ "$format" = 1 ] && [ "$userch" = "21" ]
then  nmap --script rpc-grind "$ip"
        fi
        
        if [ "$format" = 2 ] && [ "$userch" = "21" ]
then  nmap --script rpc-grind "$ip" -oN "$name"
        fi
        
         if [ "$format" = 3 ] && [ "$userch" = "21" ]
then  nmap --script rpc-grind "$ip" -oX "$name"
        fi
        
          
        if [ "$format" = 1 ] && [ "$userch" = "22" ]
then  nmap -sS -p 113 -Pn --badsum "$ip"
        fi
        
        if [ "$format" = 2 ] && [ "$userch" = "22" ]
then  nmap -sS -p 113 -Pn --badsum "$ip" -oN "$name"
        fi
        
         if [ "$format" = 3 ] && [ "$userch" = "22" ]
then  nmap -sS -p 113 -Pn --badsum "$ip" -oX "$name"
        fi
        
        
        
        if [ "$format" = 1 ] && [ "$userch" = "23" ]
then  nmap -v "$ip"
        fi
        
        if [ "$format" = 2 ] && [ "$userch" = "23" ]
then  nmap -v "$ip" -oN "$name"
        fi
        
         if [ "$format" = 3 ] && [ "$userch" = "23" ]
then  nmap -v "$ip" -oX "$name"
        fi