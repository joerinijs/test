CoDeSys+%                      @        @   2.3.9.50    @/    @                              У[ +    @                           wў[           @   q   C:\TwinCAT\PLC\LIB\STANDARD.LIB @                                                                                          CONCAT               STR1               §џ              STR2               §џ                 CONCAT                                         Фн66     џџџџ           CTD           M             §џ           Variable for CD Edge Detection      CD            §џ           Count Down on rising edge    LOAD            §џ           Load Start Value    PV           §џ           Start Value       Q            §џ           Counter reached 0    CV           §џ           Current Counter Value             Фн66     џџџџ           CTU           M             §џ            Variable for CU Edge Detection       CU            §џ       
    Count Up    RESET            §џ           Reset Counter to 0    PV           §џ           Counter Limit       Q            §џ           Counter reached the Limit    CV           §џ           Current Counter Value             Фн66     џџџџ           CTUD           MU             §џ            Variable for CU Edge Detection    MD             §џ            Variable for CD Edge Detection       CU            §џ	       
    Count Up    CD            §џ
           Count Down    RESET            §џ           Reset Counter to Null    LOAD            §џ           Load Start Value    PV           §џ           Start Value / Counter Limit       QU            §џ           Counter reached Limit    QD            §џ           Counter reached Null    CV           §џ           Current Counter Value             Фн66     џџџџ           DELETE               STR               §џ              LEN           §џ              POS           §џ                 DELETE                                         Фн66     џџџџ           F_TRIG           M             §џ
                 CLK            §џ           Signal to detect       Q            §џ           Edge detected             Фн66     џџџџ           FIND               STR1               §џ              STR2               §џ                 FIND                                     Фн66     џџџџ           INSERT               STR1               §џ              STR2               §џ              POS           §џ                 INSERT                                         Фн66     џџџџ           LEFT               STR               §џ              SIZE           §џ                 LEFT                                         Фн66     џџџџ           LEN               STR               §џ                 LEN                                     Фн66     џџџџ           MID               STR               §џ              LEN           §џ              POS           §џ                 MID                                         Фн66     џџџџ           R_TRIG           M             §џ
                 CLK            §џ           Signal to detect       Q            §џ           Edge detected             Фн66     џџџџ           REPLACE               STR1               §џ              STR2               §џ              L           §џ              P           §џ                 REPLACE                                         Фн66     џџџџ           RIGHT               STR               §џ              SIZE           §џ                 RIGHT                                         Фн66     џџџџ           RS               SET            §џ              RESET1            §џ                 Q1            §џ
                       Фн66     џџџџ           SEMA           X             §џ                 CLAIM            §џ	              RELEASE            §џ
                 BUSY            §џ                       Фн66     џџџџ           SR               SET1            §џ              RESET            §џ                 Q1            §џ	                       Фн66     џџџџ           TOF           M             §џ           internal variable 	   StartTime            §џ           internal variable       IN            §џ       ?    starts timer with falling edge, resets timer with rising edge    PT           §џ           time to pass, before Q is set       Q            §џ	       2    is FALSE, PT seconds after IN had a falling edge    ET           §џ
           elapsed time             Фн66     џџџџ           TON           M             §џ           internal variable 	   StartTime            §џ           internal variable       IN            §џ       ?    starts timer with rising edge, resets timer with falling edge    PT           §џ           time to pass, before Q is set       Q            §џ	       0    is TRUE, PT seconds after IN had a rising edge    ET           §џ
           elapsed time             Фн66     џџџџ           TP        	   StartTime            §џ           internal variable       IN            §џ       !    Trigger for Start of the Signal    PT           §џ       '    The length of the High-Signal in 10ms       Q            §џ	           The pulse    ET           §џ
       &    The current phase of the High-Signal             Фн66     џџџџ    R    @                                                                                          BLINKER           tTijdAan                           tTijdUit                           Lamp1                            Knop1                            Knop2                            Vrijgave              	              Blink              
           	   Lamp1_aan                         	   Lamp1_uit                            Lamp1Uit                            rtFallingEdge                 F_TRIG                   pulse1                   TP                   pulse2                   TP                                    њ[  @    џџџџ           COUNT           count                           counter                    CTU                   Lamp2                                             "К[  @    џџџџ           MAIN                             њ[  @    џџџџ           TEST           bTest             "            
   bTestInput            "               bTestInput2            "               bTestOutput             "               Knop1             " 
              Knop2             "               Knop3             "               Knop4             "               Lamp1             "               Lamp2             "               Lamp3             "               Lamp4             "            	   Knop1_old             "               tT1                    TOF    "                                §[  @   џџџџ            
 E  !   $   "      #   	      (        K        K        K   *     K   ?                 L         +     КЛlocalhost чкv`в     Јг ЭMЯwђд ўџџџTфЪwВсЪw    і№@     еvЯиўџџџкv>#         і№@             і№@         Р2ЛXг §8bt]mt    1               |г §7bt]mt    1  x
Л    1      Иг     і№@            і№@     е i№ е pд i№ pЎdџџџџ|д Э№     ,   ,                                                        K        @   њ[!  /*BECKCONFI3*/
        !ШШШ @   @           3               
   Standard            	§[                        VAR_GLOBAL
END_VAR
                                                                                  "   ,     
}             Standard
         MAINџџџџ               §[                 $ћџџџ                                            Standard wў[	wў[                                       	§[                        VAR_CONFIG
END_VAR
                                                                                   '           #   , Л :           Global_Variables њ[	њ[#                   H   VAR_GLOBAL
	Knop1 : BOOL;
	Knop2: BOOL;
	Lamp1 : BOOL;


END_VAR
                                                                                               '           $   , < < FЙ           TwinCAT_Configuration њ[	§[$                     *  (* Generated automatically by TwinCAT - (read only) *)
VAR_CONFIG
	test.bTestInput AT %IX0.0 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^Term 19 (EK1100)^Term 20 (EM7004)^DI Inputs^Input^test.bTestInput} *)
	test.bTestInput2 AT %IX4.0 : BOOL;
	test.bTestOutput AT %QX0.0 : BOOL;
END_VAR                                                                                               '           	   , x x ѕ           Variable_Configuration њ[	њ[	                      VAR_CONFIG
END_VAR
                                                                                                    |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ssѓџџџ                               4     џ   џџџ  Ь3 џџџ   џ џџџ     
    @џ  џџџ     @      DEFAULT             System         |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ssѓџџџ                      )   HH':'mm':'ss @                             dd'-'MM'-'yyyy @       '        , E g            Blinker њ[	њ[       ^_ЩУ            PROGRAM Blinker
VAR

	tTijdAan : TIME;
	tTijdUit : TIME;
	Lamp1: BOOL;
	Knop1 : BOOL;
	Knop2 : BOOL;
	Vrijgave : BOOL;
	Blink : BOOL;



	Lamp1_aan: BOOL;
	Lamp1_uit: BOOL;


	Lamp1Uit: BOOL;

	rtFallingEdge : F_TRIG;
	pulse1 : TP;
	pulse2 : TP;


END_VARю   tTijdAan := T#1S;
tTijdUit :=T#1S;


Lamp1_aan := Knop1 AND NOT Vrijgave;


pulse1(IN:=Lamp1_aan , PT:=tTijdAan , Q=>Lamp1);

rtFallingEdge(CLK:=Lamp1 , Q=>Lamp1_uit );


pulse2(IN:=Lamp1_uit , PT:=tTijdUit , Q=>Vrijgave);

                  , в в ћ           count  У[	"К[      ib*.b@cr        L   
PROGRAM count
VAR
	count: INT;

	counter: CTU;
	Lamp2: BOOL;
END_VAR   counter(
	CU:=Knop2 , (*Knop1*)
	RESET:= , 
	PV:= , 
	Q=> ,
	CV=>count );

IF count >=10 THEN
Lamp2 :=1;
END_IF

(* branch1*)
(* branch1.2*)               !   ,     F)           MAIN њ[	њ[                         PROGRAM MAIN
VAR

END_VAR	   count() ;               "   ,   dЗ           test §[	§[                      \  PROGRAM test

VAR

	bTest: BOOL;
	bTestInput          AT %I*:        BOOL;
	bTestInput2          AT %I*:        BOOL;
	bTestOutput       AT %Q*:        BOOL;

	Knop1 : BOOL;
	Knop2 : BOOL;
	Knop3 : BOOL;
	Knop4 : BOOL;

	Lamp1 : BOOL;
	Lamp2 : BOOL;
	Lamp3 : BOOL;
	Lamp4 : BOOL;

	Knop1_old : BOOL;

	tT1 : TOF;


END_VAR
C   bTest := TRUE ;




tT1(IN:=Knop1 , PT:=T#1s , Q=>Lamp1 );

                 §џџџ                   "   STANDARD.LIB 5.6.98 11:03:02 @FДw5      CONCAT @                	   CTD @        	   CTU @        
   CTUD @           DELETE @           F_TRIG @        
   FIND @           INSERT @        
   LEFT @        	   LEN @        	   MID @           R_TRIG @           REPLACE @           RIGHT @           RS @        
   SEMA @           SR @        	   TOF @        	   TON @           TP @              Global Variables 0 @                          Z Z             2                џџџџџџџџџџџџџџџџ  
             њџџџ  15Hx\N15        јџџџ  enh ncon                      POUs                 Blinker                    count                     MAIN  !                   test  "   џџџџ          
   Data types  џџџџ             Visualizations  џџџџ              Global Variables                 Global_Variables  #                  TwinCAT_Configuration  $                   Variable_Configuration  	   џџџџ                                                              wў[                         	   localhost            P      	   localhost            P      	   localhost            P          zCг