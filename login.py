import mysql.connector as c
from mysql.connector import Error
from tabulate import tabulate


try:
    conn=c.connect(host="localhost",username="dev",password="Breakit_123",database="onlinestore",charset="utf8")
    if conn.is_connected():
        print(conn.get_server_info())
        print()
    cur=conn.cursor()
    def Login():
         def correction():             
             print("........ACCOUNT SETTING........\n")
             l=["1.NAME","2.EMAIL_ID","3.PASSWORD","4.ADDRESS","5.MOBILE NUMBER","6.EXIT"]
             for i in l:
                print(i)
             corr=input(">>>>>>>>you want to modify your>>>>>>>>>>>(enter name like name,email_id....")
             if adm=="yes":
                 mob=input("Enter your mobile no")
                 name=name="update admin set name=%s where mob_no=%s"
                 email="update admin set email_id=%s where mob_no=%s"
                 password="update admin set password=%s where mob_no =%s"
                 address="update admin set address=%s where mob_no =%s"
                 mob_no="update admin set mob_no=%s where mob_no=%s"
             else:
                 mob=input("Enter your mobile no")
                 name="update customer set name=%s where mob_no=%s"
                 email="update customer set email_id=%s where mob_no=%s"
                 password="update customer set password=%s where mob_no=%s"
                 address="update customer set address=%s where mob_no=%s"
                 mob_no="update customer set mob_no=%s where mob_no=%s"
          
             if corr.lower()=="name" :                
                N_name=input("Enter new name:")
                cur.execute(name,(N_name,mob,))
                
             elif corr.lower()=="email_id":                 
                 N_email=input("Enter new email_id:")
                 cur.execute(email,(N_ename,mob))            
             elif corr.lower()=="password":                 
                 N_password=input("Enter new password:")
                 cur.execute(password,(N_password,mob))
             elif corr.lower()=="address":                 
                 N_address=input("Enter new address:")
                 cur.execute(address,(N_address,mob))
             elif corr.lower()=="mobile number":                 
                 N_mob_no=input("Enter new mobile_no:")
                 cur.execute(mob_no,(N_mob_no,mob))
                 
             elif corr.lower()=="exit":
                 return
             else:
                 print("::::Invalid choice:::::")
 
         def Admin():         
             #security check

             change="no"
             Aname=input("Enter your name:")
             
             Apass=input("Enter your password:")
             print()
             for i in re:
                 a,b,c,d,e=i
                 if Aname.lower()==a.lower() and c==Apass:
                       print("***VERIFIED SUCCESSFULLY***\n")
                       change="yes"
                       break
             else:
                  print("*ERROR*","----------Can't Sign in to the Admin Console","*INVALID USERNAME OR PASSWORD*""-----------\n")
             if change=="yes":
                 print(":_"*30,"THE ONLINE SHOPPING SYSTEM",":_"*39,"\n")
                 print("_"*50,"A_D_M_I_N    M_A_N_A_G_E_M_E_N_T   A_C_C_O_U_N_T","_"*67,"\n")
                 def Account():                     
                     T="yes"
                     print()
                     print("1.UPDATION ,ADDITION AND DELETION OF CATEGORY OR PRODUCTS")
                     print("2.CUSTOMER DETAILS")
                     print("3.PAYMENT DETAILS")
                     print("4.YOUR ACCOUNT")
                     print("5.LOGOUT\n")
                     
                     MN=input("::Enter Your Manage account Number(1,2,3,4 OR 5)::")                     
                     def update():
                          print("a.ADD PRODUCTS")
                          print("b.ADD CATEGORY")
                          print("c.UPDATE PRODUCTS")
                          print("d.DELETE CATEGORY")
                          print("e.REMOVE PRODUCTS\n")
                    
                          A=input("::Enter Your choice(a,b,c)::")                     
                          print()
                          if A.lower()=="a":
                              #ADDITION OF PRODUCTS
                              product="insert into products values(%s,%s,%s,%s)"
                              clo="insert into clothes values(%s,%s,%s,%s)"
                              n=int(input("Enter No of Products need to be added :"))
                                 
                              for i in range(n):
                                  cate=input("ENTER CATE_ID  in which you want to insert products:")
                                  if cate=="10001" or cate=="10002":
                            
                                      p_id=input("Enter P_id:")
                                      p_name=input("Enter P_Name:")
                                      p_price=int(input("Enter P_price:"))
                                      p_brand=input("Enter P_Brand:")
                                      cur.execute(product,(p_id,p_name,p_price,p_brand),)
                    
                                  elif cate=="10003" or cate=="10004":
                                
                                      p_id=input("Enter P_id:")
                                      p_name=input("Enter P_Name:")
                                      p_price=int(input("Enter P_price:"))
                                      p_brand=input("Enter P_Brand:")
                                      cur.execute(clo,(p_id,p_name,p_price,p_brand),)
                                                                     
                              print()
                              print("*******PRODUCTS ADDED SUCCESSFULLY********\n")
                            
                          elif A.lower()=="b":
                               #ADDITION OF CATEGORY
                               cate="insert into category values(%s,%s)"
                               n=int(input("Enter No of Category need to be added:"))
                               for i in range(n):
                                   cate_id=input("Enter Cate_id:")
                                   cate_name=input("Enter Cate_name:")
                                   cur.execute(cate,(cate_id,cate_name),)
                               print()
                               print("********CATEGORIES ADDED SUCCESSFULLY********\n")

                          elif A.lower()=="c":
                             #UPDATION OF PRODUCTS
                              up="update category set cate_name=%s where cate_id=%s"
                              n=int(input("Enter no of category need to be updated:"))
                              for i in range(n):
                                   cate_id=input("Enter Cate_id:")
                                   cate_name=input("Enter Cate_name:")
                                   cur.execute(up,(cate_name,cate_id))
                              print()
                              print("******PRODUCTS UPDATED SUCCESSFULLY*******\n")
                              
                          elif A.lower()=="d":            
                               #DELETION OF CATEGORY
                                DE="delete from category where cate_name=%s and cate_id=%s"
                                n=int(input("Enter no of category need to be deleted:"))
                                for i in range(n):
                                     cate_id=input("Enter Cate_id:")
                                     cate_name=input("Enter Cate_name:")
                                     cur.execute(DE,(cate_name,cate_id))
                                print("******CATEGORIES DELETED SUCCESSFULLY*******\n")
                                     
                          elif A.lower()=="e":            
                               #DELETION OF PRODUCTS
                                DE="DELETE FROM products WHERE p_id=%s"
                                cl="delete from clothes where p_id=%s"
                                n=int(input("Enter no of products need to be deleted:"))
                                for i in range(n):
                                     cate=input("Enter cate_id:")
                                     if cate=="10001" or cate=="10002":
                                         p_id=input("Enter p_id:")
                                         cur.execute(DE,(p_id,))
                                     elif cate=="10003" or cate=="10004":
                                          p_id=input("Enter p_id:")
                                          cur.execute(cl,(p_id,))
                                 
                                         
                                print("********PRODUCTS DELETED SUCCESSFULLY*********\n")
                     def Customer():
                         #CUSTOMER DETAILS
                         CU="SELECT * FROM customer "
                         print()
                         print("@"*50,"CUSTOMER DETAILS","@"*40)
                         print()
                         cur.execute(CU)
                         res=cur.fetchall()
                         print(tabulate(res,headers=["NAME","Email id","Password","Mob_no","ADDRESS"],tablefmt="grid"))
                     def Payment():
                       #PAYMENT DETAILS
                         PAY="select * from orders "
                         cur.execute(PAY)
                         RE=cur.fetchall()
                         print(tabulate(RE,headers=["NAME","Email id","PAY_ID","PAY_MODES","PAY_AMOUNTS"],tablefmt="grid"))
                     def Detail():
                         DE="select * from admin"
                         cur.execute(DE)
                         re=cur.fetchall()
                         print(tabulate(re,headers=["NAME","Email id","Password","ADDRESS","Mob_No"],tablefmt="grid"))
                         print()
                         coo=input("Do you want to Edit your acount(yes/no):")
                         if coo.lower()=="yes":
                              correction()
                              print("Account Modified Successfully")
                        
                     def logout():
                         print()
                                              
                     if MN=="1":
                          update()
                     elif MN=="2":
                         Customer()
                     elif MN=="3":
                         Payment()
                     elif MN=="4":
                           Detail()
                     
                     elif MN=="5":  
                           logout()
                     print()
                     T="YES"
                     SEA="NO"
                     while T.lower()=="yes":
                         if MN !="6":
                              SEA=input("||Do you want to Manage more accounts(yes/no)||")
                              print()
                         if SEA.lower()=="yes":
                             Account()
                         else:
                             print("~ ~"*24,"THANKYOU","~ ~"*28)
                             T="NO"
                         
                         break                             
                 Account()
         def User():
            ac=input("Already have an Account?(yes/no):")
            print()
            change="no"
            t="no"             
            if ac.lower()=="yes":
                print("::::LOGIN PLEASE:::")
                print()
                global uname
                uname=input("Enter Username:")
                mob=input("Enter your mobile number:")
                upass=input("Enter Password:")                
                for i in r:
                    a,b,c,d,e=i
                    if a.lower()==uname.lower() and c==upass :
                        t="yes"
                        acc="no"
                        change="yes"
                        break
                else:
                    print("ACCOUNT NOT FOUND")
            if change =="no" or ac.lower()=="no":
                 print()
                 acc=input("Want to create new Account?(yes/no)")
                 print()
           
            if acc.lower()=="yes":
                 
                 sql3="insert into customer values(%s,%s,%s,%s,%s)"
                 uname=input("Enter Username:")
                 E_mail=input("Enter E_MAIL ID:")
                 Mo_no=input("Enter Moblie Number:")
                 upass=input("Enter Password:")
                 ADD=input("Enter Address(pin code and state):")
                
                 cur.execute(sql3,(uname.upper(),E_mail,upass,Mo_no,ADD))
                 print()
                 print(":::::::::::ACCOUNT ADDED SUCCESSFULLY:::::::::")
            else:
                print()
                print("THANK YOU!!!!!!!, HAVE A NICE DAY")
          
            if acc.lower()=="yes" or t=="yes":
                print()
                print("HELLO,",uname.upper(),"WELCOME TO OUR ONLINE SHOPPING STORE\n")
                

                print("=================You want to search for=================\n")

                WA="yes"
                while WA.lower()=="yes":
                      def user_account():
                          ACCOUNT="select * FROM customer where NAME=%s and password=%s"
                          cur.execute(ACCOUNT,(uname,upass))
                          ACC_RE=cur.fetchall()
                          print(tabulate(ACC_RE,headers=["NAME","Email id","Password","Mob_no","ADDRESS"],tablefmt="grid"))
                          print()
                          coo=input("Do you want to Edit your acount(yes/no):")

                          if coo.lower()=="yes":
                              correction()
                              print()
                              print("Account modified successfully")

                      def category():
                             Tr="yes"
                             while Tr.lower()=="yes":
                                  print(" _ "*20,"SEARCH BY CATEGORIES","_ "*20,"\n")
                                  print()
                                  print("1.MOBILES")
                                  print("2.TV'S & ELECTRIC APPLIANCES")
                                  print("3.WOMEN'S FASHION")
                                  print("4.MEN'S FASHI0N\n")                                  
                                  C_NO=input("Enter category number:::")
                                  def add_item ():
                                        ad=[]
                                        count=1
                                        for i in r:
                                              a,b=i
                                              l=([str(count),str(a),str(b)])
                                              ad.append(list(l))
                                              count=count+1
                                                
                                        print(tabulate(ad,headers=["S.NO","NAME","PRICES"],tablefmt="grid"),end=" ")
                                        print()
                                        print()         
                                        item=input("::Would you like to add any item in cart,Enter(yes/no)::")
                                        sqlf1="insert into cart_item values(%s,%s,%s,%s)"
                                        T="true"
                                        while T.lower()=="true":
                                                if item.lower()=="yes":
                                                      num=int(input("Enter sequence number:"))
                                                      qu=int(input("Enter Quantity:"))
                                                      mob=input("Enter mobile number:")
                                                      for j in ad:
                                                             if j[0]==str(num):
                                                                    re=j[1]
                                                                    co=j[2]
                                                                    t=qu*int(co)
                                                                    cur.execute(sqlf1,(re,qu,t,mob),)
                                                      
                                                      print(":"*63,"ITEM ADDED SUCCESSFULLY",":"*79)
                                                      print()
                                                      z=input("Do you want to add more items(yes/no)?:")
                                                      print()
                                                      if z.lower()=="no":
                                                          T="false"
                                                else:
                                                        T="false"
                                        print("*"*70,"THANKYOU","*"*87)
                                        print()                                                                                                      
                                  if C_NO == "1":
                                        print(":"*73,"MOBILES",":"*85)

                                        print()
                                        item="no"
                                        s="yes"
                                        while s.lower()=="yes":                                            
                                                  print()
                                                  print(":"*50,"SOME MODERN LATEST SMARTPHONE BRANDS FOR YOU ARE GIVEN BELOW",":"*65)
                                                  print()
                                                  print("1.ONEPLUS+")
                                                  print("2.Redmi")
                                                  print("3.SAMSUNG")
                                                  print("4.realme")
                                                  print("5.Apple\n")
                                                  
                                                  P_Brand=input("ENTER NAME OF BRAND FOR SEARCH:")
                                                  sqlf="select p_name,p_price from products where P_Brand = %s and P_id LIKE %s"
                                                  print()
                                                  print("\a"*70,P_Brand.upper(),"\a"*88)
                                                  print()
                                                  cur.execute(sqlf,(P_Brand,"%M"))
                                                  r = cur.fetchall()
                                                  mobile="select information from mobile where p_brand=%s"
                                                  def smart_phone():
                                                  
                                                        print("#INFORMATION ABOUT",P_Brand.upper()," SMARTPHONES\n")
                                                        cur.execute(mobile,(P_Brand,))
                                                        smart=cur.fetchall()
                                                        for j in smart:
                                                            i,=j
                                                            print("\a",i)
                                                        global n
                                                        n=input("Do you want to see latest best smartphones?Enter(yes/no)::")
                                                    
                                                        if n.lower()=="yes":
                                                         print(":"*10,"THESE ARE THE LATEST",P_Brand.upper(),"SMARTPHONES NAMES AND PRICES",":"*10,"\n")
                                                         add_item()
                                                                                                                 
                                                  if P_Brand.upper() =="ONEPLUS+":
                                                      smart_phone()
                                                                                                              
                                                  elif P_Brand.upper()=="REDMI":
                                                      smart_phone()
                                                      
                                                  elif P_Brand.upper()=="SAMSUNG":
                                                      smart_phone()
                                                  elif P_Brand.upper()=="REALME":
                                                      smart_phone()
                                                      
                                                  elif P_Brand.upper()=="APPLE":
                                                      smart_phone()                                                      
                                                    
                                                  else:
                                                      print("INVALID BRAND NAME")
                                                  print()
                                                  s=input("Do you want to search again for another Brand of Phone,Enter(yes/no)::")
                                                  
                                        
                                  elif C_NO == "2":
                                        print(":"*63,"TV'S & ELECTRIC APPLIANCES",":"*75)
                                        print()
                                        print("1.SMART TV")
                                        print("2.AC")
                                        print("3.WASHING MACHINES")
                                        print("4.REFRIGERATORS")
                                        print()
                                        EL=input("ENTER APPLIANCE NAME:")
                                        if EL.upper()=="SMART TV":
                                             s="yes"
                                             item="no"
                                             while s.lower()=="yes":
                                                print()
                                                print(":"*50,"SOME TRENDING BRANDS OF SMART TVs ARE GIVEN BELOW",":"*65)
                                                print()
                                                print("1.SONY")
                                                print("2.Mi")
                                                print("3.ONEPLUS")
                                                print("4.LG")
                                                print("5.SAMSUNG")
                                                P_Brand=input("ENTER BRAND NAME FOR SEARCH:")

                                                print()
                                                print("\a"*70,P_Brand.upper(),"\a"*88)
                                                print()
                                                sqlf="select p_name,p_price from products where P_Brand = %s"
                                                cur.execute(sqlf,(P_Brand,))
                                                r = cur.fetchall()
                                                TV="SELECT INFORMATION FROM TV WHERE P_BRAND=%s"
                                                def smart_tv():
                                                  
                                                        print("#INFORMATION ABOUT",P_Brand.upper()," SMART TV")
                                                        print()
                                                        cur.execute(TV,(P_Brand,))
                                                        smart=cur.fetchall()
                                                        for j in smart:
                                                            i,=j
                                                            print("\a",i)
                                                        print()
                                                        global n
                                                        
                                                        n=input("Do you want to see latest best smart tv?Enter(yes/no)::")
                                                    
                                                        if n.lower()=="yes":
                                                             print(":"*10,"THESE ARE THE LATEST",P_Brand.upper()," SMART TVs NAMES AND PRICES",":"*10,"\n")
                                            
                                                             add_item()
                                                if P_Brand.upper() =="SONY":
                                                    smart_tv()
                                                elif P_Brand.upper() =="MI":
                                                    smart_tv()                                                        
                                                elif P_Brand.upper() =="ONEPLUS":
                                                    smart_tv()                                                    
                                                elif P_Brand.upper() =="LG":
                                                    sqlf="select p_name,p_price from products where P_NAME LIKE %s or P_id like %s"
                                                    print()
                                                    cur.execute(sqlf,("LG%CM(%","%TE"))
                                                    r = cur.fetchall()
                                                    smart_tv() 
                                                elif P_Brand.upper() =="SAMSUNG":
                                                    sqlf="select p_name,p_price from products where P_NAME LIKE %s or P_id LIKE %s"
                                                    print()
                                                    cur.execute(sqlf,("samsung%CM(%","%TE"))
                                                    r = cur.fetchall()
                                                    smart_tv()
                                                else:
                                                    print("INVALID BRAND NAME")
                                                
                                                s=input("Do you want to search again for another Brand of TV,Enter(yes/no)::")
                                                print()
                                                
                                        elif EL.upper()=="AC":
                                             s="yes"
                                             item="no"
                                             while s.lower()=="yes":
                                                print()
                                                print(":"*50,"SOME TRENDING BRANDS OF ACs ARE GIVEN BELOW",":"*65)
                                                print()
                                                print("1.VOLTAS")
                                                print("2.WHIRLPOOL")
                                                print("3.LG")
                                                print("4.BLUE STAR\n")
                                                P_Brand=input("ENTER BRAND NAME FOR SEARCH:")

                                                print("\a"*70,P_Brand.upper(),"\a"*88)
                                                print()
                                                sqlf="select p_name,p_price from products where P_Brand = %s or p_id LIKE %s"
                                                cur.execute(sqlf,(P_Brand,"%TE"))
                                                r = cur.fetchall()
                                                AC="select information from AC where P_brand=%s"
                                                def A_C():
                                                      print("#INFORMATION ABOUT", P_Brand.upper(),"AC")
                                                      print()
                                                      cur.execute(AC,(P_Brand,))
                                                      smart=cur.fetchall()
                                                      for j in smart:
                                                            i,=j
                                                            print("\a",i)
                                                      global n
                                                       
                                                      n=input("Do you want to see latest best Smart Tvs Enter(yes/no)::")
                                                      print()
                                                      if n.lower()=="yes":
                                                            print("THESE ARE THE TRENDING", P_Brand.upper()," ACs NAMES AND PRICES")
                                                            add_item()                                                                                                     
                                                if P_Brand.upper() =="VOLTAS":

                                                    A_C()                                                    
                                                elif P_Brand.upper() =="LG":
                                                    sqlf="select p_name,p_price from products where P_NAME LIKE %s or P_id LIKE %s"
                                                    cur.execute(sqlf,("LG%Ton%","%TE"))
                                                    r = cur.fetchall()
                                                    A_C()
                                                                                                       
                                                elif P_Brand.upper() =="WHIRLPOOL":
                                                    sqlf="select p_name,p_price from products where P_NAME LIKE %s or P_id LIKE %s"
                                                    cur.execute(sqlf,("Whirlpool%Ton%","%TE"))
                                                    r = cur.fetchall()
                                                    A_C()
                                                elif P_Brand.upper() =="BLUE STAR":
                                                    A_C()
                                                
                                                s=input("Do you want to search for another brand of ACs:(yes/no)")
                                        
                                        elif EL.upper()=="WASHING MACHINES":
                                             s="yes"
                                             item="no"
                                             while s.lower()=="yes":
                                                print()
                                                print(":"*50,"SOME TRENDING BRANDS OF WASHING MACHINES ARE GIVEN BELOW",":"*65)
                                                print()
                                                print("1.IFB")
                                                print("2.GODREJ")
                                                print("3.HAIER")
                                                print("4.BOSCH")
                                                P_Brand=input("ENTER BRAND NAME FOR SEARCH:")

                                                print()
                                                print("\a"*70,P_Brand.upper(),"\a"*88)
                                                print()
                                                sqlf="select p_name,p_price from products where P_Brand = %s or p_id LIKE %s"
                                                cur.execute(sqlf,(P_Brand,"%TE"))
                                                r = cur.fetchall()
                                                wash="select information from washing where p_brand=%s"
                                                def wash_m():
                                                     print("#INFORMATION ABOUT",P_Brand.upper()," WASHING MACHINE")
                                                     print()
                                                     cur.execute(wash,(P_Brand,))
                                                     smart=cur.fetchall()
                                                     for j in smart:
                                                            i,=j
                                                            print("\a",i)
                                                     global n
                                                     n=input("Do you want to see latest best Washing machines Enter(yes/no)::")
                                                     print()
                                                     if n.lower()=="yes":
                                                          print("THESE ARE THE TRENDING", P_Brand.upper()," WASHING MACHINES NAMES AND PRICES\n")
                                                          add_item()
                                                                                                                                                                                                              
                                                if P_Brand.upper() =="IFB":
                                                     wash_m()
                                                if P_Brand.upper() =="GODREJ":
                                                     wash_m()
                                                    
                                                elif P_Brand.upper() =="HAIER":
                                                     wash_m()
                                                elif P_Brand.upper() =="BOSCH":
                                                     wash_m()                                                      
                                                s=input("Do you want to search for another brand of washing machines:(yes/no)")
                                                print()
                                               
                                        elif EL.upper()=="REFRIGERATORS":
                                             s="yes"
                                             item="no"
                                             while s.lower()=="yes":
                                                print()
                                                print(":"*50,"SOME TRENDING BRANDS OF REFRIGERATORS ARE GIVEN BELOW",":"*65)
                                                print()
                                                print("1.SAMSUNG")
                                                print("2.WHIRLPOOL")
                                                print("3.HISENSE")
                                                print("4.PANASONIC\n")
                                                P_Brand=input("ENTER BRAND NAME FOR SEARCH:")
                                                
                                                print("\a"*70,P_Brand.upper(),"\a"*88)
                                                print()
                                                sqlf="select p_price,p_name from products where P_Brand = %s or p_id LIKE %s"
                                                cur.execute(sqlf,(P_Brand,"%TE"))
                                                r = cur.fetchall()
                                                refrig="select information from refri where p_brand=%s"
                                                def REFRI():
                                                     print("#INFORMATION ABOUT",P_Brand.upper(),"REFRIGERATORS")
                                                     print()
                                                     cur.execute(refrig,(P_Brand,))
                                                     smart=cur.fetchall()
                                                     for j in smart:
                                                            i,=j
                                                            print("\a",i)
                                                     global n
                                                     n=input("Do you want to see latest best refrigerators Enter(yes/no)::")
                                                     if n.lower()=="yes":
                                                          print(":"*10,"THESE ARE THE TRENDING", P_Brand.upper()," REFRIGERATORS NAMES AND PRICES",":"*10,"\n")
                                                          add_item()                                                       
                                                if P_Brand.upper() =="SAMSUNG":
                                                    sqlf="select p_name,p_price from products where P_NAME LIKE %s or P_id LIKE %s"
                                                    cur.execute(sqlf,("Samsung%Refrigerator(%","%TG"))
                                                    r = cur.fetchall()
                                                    REFRI()
                                                elif P_Brand.upper() =="WHIRLPOOL":
                                                    sqlf="select p_name,p_price from products where P_NAME LIKE %s or P_id LIKE %s"
                                                    cur.execute(sqlf,(" Whirlpool%L_3 STAR%","%TG"))
                                                    r = cur.fetchall()
                                                    REFRI()
                                                elif P_Brand.upper() =="HISENSE":
                                                    REFRI()

                                                elif P_Brand.upper() =="PANASONIC":
                                                    REFRI()                                                                
                                                s=input("Do you want to search for another brand of refrigerators:(yes/no)")
                                                print()
                                  elif C_NO=="3":
                                        print(":"*63,"WOMEN'S FASHION",":"*80)
                                        print()
                                        print("\a"*60,"WOMEN'S CLOTHING","\a"*80)
                                        s="y"
                                        while s.lower()=="y":
                                              print()
                                              print("1.ETHNIC WEAR")
                                              print("2.WESTERN WEAR")
                                              print()
                                              EL=input("ENTER YOUR CHOICE(1 OR 2):")
                                              ethn="y"                                                                                                          
                                              if EL=="1":
                                                 while ethn.lower()=="y":
                                                     print("*"*50,"ETHNIC WEAR","*"*40)
                                                     print()
                                                     print("1.Saree")
                                                     print("2.Kurta sets\n")
                                                     et=input("Enter Your choice(1 or 2):")
                                                     sareee="select information from women_fashion where P_Brand=%s"
                                              
                                                     if et=="1":
                                                         t="yes"
                                                         while t.lower()=="yes":
                                                             print()
                                                             print("\f"*50,"SAREES","\f"*40)
                                                             print()
                                                             print("a.DesiButik")
                                                             print("b.Florence")
                                                             print("c.Saily")
                                                             print("d.KVS FAB")
                                                             print()
                                                             sar=input("Enter Brand Name::")
                                                             sqlf="select p_name,p_price from clothes where P_brand =%s "
                                                             cur.execute(sqlf,(sar,))
                                                             r = cur.fetchall()                                                     
                                                             def saree():                                                                 
                                                                  print("#INFORMATION ABOUT",sar.upper(),"SAREES")
                                                                  print()
                                                                  cur.execute(sareee,(sar,))
                                                                  smart=cur.fetchall()
                                                                  for j in smart:
                                                                      i,=j
                                                                      print("\a",i)
                                                                  print()
                                                                  global n
                                                                  n=input("Do you want to see latest best Sarees Enter(yes/no)::")
                                                                  
                                                                  if n.lower()=="yes":
                                                                     print(":"*10,"THESE ARE THE TRENDING", sar.upper(),"SAREES NAMES AND PRICES",":"*10,"\n")
                                                                     add_item()                                                                                                  
                                        
                                                             if sar.lower()=="desibutik":
                                                                    saree()                                                                                                                                                    
                                                             elif sar.lower()=="florence":
                                                                    saree()                                                                                                
                                                             elif sar.lower()=="saily":
                                                                    saree()                                                    
                                                             elif sar.lower()=="kvs fab":
                                                                    saree()
                                                             else:
                                                                 print("Brand Name not available\n")
                                                                                                                       
                                                             t=input("DO you want to see more fashionable Sarees(Yes/No):")
                                                             print()
                                                     elif et=="2":
                                                           sqlf="select p_name,p_price from clothes where P_brand=%s "
                                                           cur.execute(sqlf,("Biba",))
                                                           r = cur.fetchall()
                                                           kurta="select information from women_fashion where P_brand=%s"
                                                           print()
                                                           print("\f"*50,"KURTA SETS","\f"*40)
                                                           print("#INFORMATION ABOUT KURTA\n")
                                                           cur.execute(kurta,("biba",))
                                                           smart=cur.fetchall()
                                                           for j in smart:
                                                                  i,=j
                                                                  print("\a",i)
                                                                  
                                                           print()                                                                  
                                                           n=input("Do you want to see latest best kurta Enter(yes/no)::")
                                                           print()
                                                           if n.lower()=="yes":
                                                                     print("THESE ARE THE TRENDING BIBA KURTA SETS NAMES AND PRICES\n") 
                                                                     add_item()                                                                                                                                     
                                                     ethn=input("Do you want to search for more Ethnic clothes(y/n)::")
                                                                                       
                                              elif EL=="2":                                            
                                                 print("*"*50,"WESTERN WEAR","*"*40)
                                                 west="y"
                                                 while west.lower()=="y":
                                                     print()
                                                     print("1.Tops and T-shirt")
                                                     print("2.Jeans")
                                                     print("3.Jumpsuits\n")
                                                     wet=input("Enter Your choice(1, 2 or 3):")
                                                     TOP="select information from women_fashion where P_brand=%s"
                                                     def shirt():
                                                         print("_"*70,tops.upper(),"_"*50)
                                                         print("#INFORMATION ABOUT",tops.upper())
                                                         cur.execute(TOP,(tops,))
                                                         smart=cur.fetchall()
                                                         for j in smart:
                                                                i,=j
                                                                print("\a",i)
                                                         print()                                                       
                                                     if wet=="1":
                                                         tops="tops and t-shirt"
                                                         shirt()
                                                         n=input("Do you want to see latest best tops and t-shirt, Enter(yes/no)::")
                                                         if n.lower()=="yes":
                                                              print("THESE ARE THE TRENDING JEANS NAMES AND PRICES\n")
                                                              maxi=[]
                                                              sqlf="select p_name,p_price from clothes where P_brand=%s "
                                                              top=["max","miss olive","harpa"]
                                                              for i in top:
                                                                 cur.execute(sqlf,(i,))
                                                                 r = cur.fetchall()
                                                                 for j in r:
                                                                     maxi.append(j)
                                                              r=maxi
                                                              add_item()
                                                                                                        
                                                     elif wet=="2":
                                                        tops="jeans"
                                                        shirt()                                                
                                                        n=input("Do you want to see latest best jeans, Enter(yes/no)::")
                                                        print()
                                                        if n.lower()=="yes":
                                                              print(":"*10,"THESE ARE THE TRENDING JEANS NAMES AND PRICES",":"*10,"\n")
                                                              levi=[]                                                      
                                                              top=["levi","lee"]
                                                              for i in top:
                                                                  sqlf="select p_name,p_price from clothes where P_brand=%s "
                                                                  cur.execute(sqlf,(i,))
                                                                  r = cur.fetchall()
                                                                  for j in r:
                                                                      levi.append(j)
                                                              r=levi
                                                              add_item()
                                                           
                                                     elif wet=="3":
                                                        tops="jumpsuit"
                                                        shirt()                                                                                        
                                                        n=input("Do you want to see latest best jumpsuits, Enter(yes/no)::")
                                                        print()
                                                        if n.lower()=="yes":
                                                             print(":"*10,"THESE ARE THE TRENDING JUMPSUITS NAMES AND PRICES",":"*10,"\n")
                                                             rare=[]                                                                                      
                                                             top=["rare","miss Brand"]
                                                             for i in top:
                                                                 sqlf="select p_name,p_price from clothes where P_brand=%s "
                                                                 cur.execute(sqlf,(i,))
                                                                 r = cur.fetchall()
                                                                 for j in r:
                                                                     rare.append(j)
                                                             r=rare    
                                                             add_item()
                                                 
                                                     west=input("DO you want to search for more western clothes(y/n):")
                                                 
                                              print()
                                              s=input("WANT TO LOOK FOR MORE WOMEN'S CLOTHES(Y/N)::")
                                     
                                  elif C_NO=="4":
                                        print(":"*63,"MEN'S FASHION",":"*80)
                                        print()
                                        fashh="y"
                                        while fashh.lower()=="y":
                                             print("1.MEN'S CLOTHING")
                                             print("2.SHOES")
                                             
                                             SU=input("ENTER YOUR CHOICE(1, 2):")

                                             def men_fash():
                                                 fashion="select information from men_fashion where P_Brand=%s"
                                                 print("_"*50,brand.upper(),"_"*40)
                                                 print("#INFORMATION ABOUT",brand.upper())
                                                 cur.execute(fashion,(brand,))
                                                 smart=cur.fetchall()
                                                 for j in smart:
                                                    i,=j
                                                    print("\a",i)
                                                 print()                                                       
                                             if SU=="1":
                                                  print()
                                                  print("_"*63,"MEN'S FASHION","_"*80)
                                                  print()
                                                  tshirt="y"
                                                  while tshirt=="y":
                                                      print("1.SHIRT")
                                                      print("2.T-SHIRT")
                                                      print("3.JEANS\n")
                                                      wet=input("Enter Your choice(1, 2 or 3):")                                                                                                                                                                      
                                                      if wet=="1":
                                                          brand="shirt"
                                                          men_fash()
                                                          n=input("Do you want to see latest best shirt, Enter(yes/no)::")
                                                          print()
                                                          if n.lower()=="yes":
                                                                  print(":"*10,"THESE ARE THE TRENDING SHIRTS NAMES AND PRICES",":"*10,"\n")
                                                                  ray=[]
                                                                  sqlff="select p_name,p_price from clothes where P_brand=%s"
                                                                  brandd=["RAYMOND","DEELMO","CAVALLO"]
                                                                  for i in brandd:
                                                                      cur.execute(sqlff,(i,))
                                                                      r = cur.fetchall()
                                                                      for j in r:
                                                                          ray.append(j)
                                                                  r=ray
                                                                  add_item()                                            
                                                           
                                                      elif wet=="2":
                                                           brand="t-shirt"
                                                           men_fash()                                                
                                                           n=input("Do you want to see latest best T-shirt, Enter(yes/no)::")
                                                           print()
                                                           if n.lower()=="yes":
                                                               print(":"*10,"THESE ARE THE TRENDING T-SHIRTS NAMES AND PRICES",":"*10,"\n")                                                              
                                                               sqlf="select p_name,p_price from clothes where P_brand=%s"
                                                               brandd=["LOUIS PHILIPPE","PUMA"]
                                                               puma=[]
                                                               for i in brandd:
                                                                  cur.execute(sqlf,(i,))
                                                                  r = cur.fetchall()
                                                                  for j in r:
                                                                     puma.append(j)
                                                               r=puma
                                                               add_item()
                                            
                                                      elif wet=="3":
                                                          brand="jeans"
                                                          men_fash()                                                
                                                          n=input("Do you want to see latest best shirt, Enter(yes/no)::")
                                                          print()
                                                          if n.lower()=="yes":
                                                               print(":"*10,"THESE ARE THE TRENDING JEANS NAMES AND PRICES",":"*10,"\n")
                                                               sqlf="select p_name,p_price from clothes where P_brand=%s "
                                                               pepe=[]
                                                               brandd=["PEPE","SPYKAR"]
                                                               for i in brandd:
                                                                   cur.execute(sqlf,(i,))
                                                                   r = cur.fetchall()
                                                                   for j in r:
                                                                       pepe.append(j)
                                                               r=pepe
                                                               add_item()
                                                      tshirt=input("Do you want to search more clothes:(y/n)")
                                     
                                             elif SU=="2":
                                                 brand="shoes"
                                                 men_fash()
                                                 n=input("Do you want to see latest best shoes, Enter(yes/no)::")
                                                 print()
                                                 if n.lower()=="yes":
                                                        print(":"*10,"THESE ARE THE TRENDING SHOES NAMES AND PRICES",":"*10,"\n")
                                                       
                                                        sqlf="select p_name,p_price from clothes where P_brand=%s"
                                                        bata=[]
                                                        brandd=["CAMPUS","BATA","REEBOK"]
                                                        for i in brandd:
                                                            cur.execute(sqlf,(i,))
                                                            r = cur.fetchall()
                                                            for j in r:
                                                                bata.append(j)
                                                        r=bata
                                                        add_item()
                                             fashh=input("Do you want to look for more fashionable things:(y/n)::")
                                  print()     
                                  od=input("Do you want to Place an order of any item that you have added in cart:::(yes/no)")
                                  print()                                  
                                  if od.lower()=="yes":                                      
                                           ct="select item_name,quantity,total_cost from cart_item,customer where Phone_no=(Mob_no)"
                                           payt="insert into Orders values(%s,%s,%s,%s,%s,%s)"
                                           cur.execute(ct,(mob))
                                           car=cur.fetchall()
                                           count=1
                                           odd=[]
                                           print("YOUR SELECTED CART ITEMS\n")
                                           if len(car)!=0:
                                                 for i in car:
                                                     a,b,c=i
                                                     l=([str(count),str(a),str(b),str(c)])
                                                     odd.append(list(l))
                                                     count=count+1                                                
                                                 print(tabulate(odd,headers=["S.NO","ITEM NAME","QUANTITY","TOTALCOST"],tablefmt="grid"))  
                                                 print()
                                                 it=int(input("Enter sequence number:"))
                                                 qt=int(input("Enter Quantity:"))
                                                 print()
                                                 print("::PAY MODES::\n")
                                                 print("1.CASH ON DELIVERY")
                                                 print("2.UPI")
                                                 print("3.DEBIT/CREDIT/ATM CARD")
                                                 print("4.EMI")
                                                 print("5.Net Banking\n")                                     
                                                 py_m=input("Enter pay maode::")
                                                 py_i=input("Enter pay id(mobile number):")
                                                 py=odd[it-1][3]
                                                 ord_item=odd[it-1][1]
                                                 py_a=int(py)*qt                                    
                                     
                                                 cur.execute(payt,(py_i,py_a,py_m,ord_item,qt,py,),)                                                    
                                                
                                                 print()
                                                 print("SUCCESSFULLY PLACED THE ORDER\n")
                                           else:
                                               print("NO ITEMS IS SELECTED")
                                  else:
                                           print("!!!!!!!THE ORDER IS NOT PLACED.YOU CAN CARRY ON WITH YOUR PURCHASE.HAPPY SHOPPING!!!!")
                                  print()
                                  Tr=input("Do you want to search for more categories(yes/no):")
                                  s="no"

                      def cart():
                         print()
                         ct="select * from cart_item"
                         cur.execute(ct)
                         car=cur.fetchall()
                         N="NO"                         
                         if len(car)!=0:
                            print("YOUR SELECTED CART_ITEMS")
                            print()
                            se=[] 
                            for i in car:
                               a,b,c,d=i
                               
                               if d==mob:
                                   se.append([str(a),str(b),str(c)])
                               
                            N="YES"
                            print(tabulate(se,headers=["ITEM NAME","QUANTITY","TOTALCOST"],tablefmt="grid"))
                            print()
                         if N.upper()=="NO":
                                 print("NO ITEM IS ADDED IN CART\n")
                                 print("!!! YOU CAN ADD ITEMS FROM CATEGORIES!!!")   
                      def order():                    
                         oc="select * from orders where pay_id=%s"
                         cur.execute(oc,(mob,))
                         res=cur.fetchall()
                         orr=[]
                         t="no"
                         if len(res)!=0:
                             print("YOUR ORDERED ITEMS")
                             count=1
                             for i in res:
                                a,b,c,d,e,f=i
                                if mob==a:
                                    orr.append([str(count),str(d),str(e),str(f),str(a),str(b),str(c)])
                                count+=1
                          
                             t="yes"
                             print(tabulate(orr,headers=["S.NO","ITEM NAME","QUANTITY","TOTALCOST","PAY_ID","PAY AMOUNT","PAY MODES"],tablefmt="grid"))
                             cancel=input("Do you want to Cancel the Order(Yes/No):")
                             print()
                             if cancel.lower()=="yes":
                                 num=int(input("Enter S.NO:"))
                                 sqlor="delete from orders where pay_id=%s and item_name=%s"
                                 na=orr[num-1][1]
                                 cur.execute(sqlor,(mob,na))
                                 print("ORDERED ITEM IS REMOVED FROM THE PLACE ORDER")
                             else:
                                 print("OK,YOU CAN CONTINUE YOUR SHOPPING")
                            
                         if len(res)==0 or t=="no":
                                 print("NO ORDERS AVALIABLE\n")
                                 print("!!! YOU CAN ORDER ITEMS FROM CART!!!")
                      
                      print("1.your Account")
                      print("2.search by category")
                      print("3.your cart")
                      print("4.your Orders")
                      print("5.Logout\n")
                
                      SE=input("::Enter your Choice::")
                      if SE=="1":
                         user_account()
                      elif SE=="2":
                         category()
                      elif SE=="3":
                         cart()
                      elif SE=="4":
                          order()
                      elif SE=="5":
                          WA="no"
                          
                      print()
                      WA=input("Want to search for more options(yes/no)::")
                print()
                print("THANK YOU HAVE A NICE DAY!!!!!!!!HOPE YOU HAVE A NICE SHOPPING\n")
         if CH=="1":
             adm="yes"
             mob=input("Enter your mobile number::")
             Admin()
             
         if CH=="2":
             adm="no"
             User()
             
    print("o*"*30,"BRL DAV PUBLIC SCHOOL","o*"*42,"\n")
    print("x"*55,"WELCOME TO ONLINE SHOPPING SYSTEM","x"*77,"\n")
    print("::THE MAIN PROFILES IN ONLINE SHOPPING SYSTEM::\n")
    print("1.ADMIN")
    print("2.CUSTOMER\n")
    CH=input("::Enter your Profile(1 or 2)::")
    print()
    sql="select * from admin"
    cur.execute(sql)
    re=cur.fetchall()    
    sql2="select * FROM customer"    
    cur.execute(sql2)
    r=cur.fetchall()        
    Login()
    conn.commit()

except Error as e:
    print(e)
# finally:
#     conn.close()

