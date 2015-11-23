-- *********************************************************************/
-- Copyright 2005 Actel Corporation.  All rights reserved.
-- IP Solutions Group
--
-- ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
-- ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
-- IN ADVANCE IN WRITING.
--
-- File        :  textio.vhd
--
-- Originator  :  I Bryant
--
-- Date        :  22 Jan 1997
--
-- Description :  Implements Basic Printing Routines for the Test harness
--
-- Revision History:
--      3.02 08Jan99 IPB  : Nokia Modifications
--      2.0  01Jun01 IPB  : VariCore Production Code Release 1
--      2.1  11Mar02 IPB  : Added %t support
-- Revision history for version in the Core1553 Cores
-- Rev: 1.0 01Apr02 IPB  : Initial Code (Copied from PCI Cores)
-- Rev: 1.1 09Jul02 IPB  : First Cut EAP
-- Rev: 1.2 01Aug02 IPB  : Second EAP
-- Rev: 2.00 22Aug02 IPB  : Production
-- Rev: 2.1 22Oct03 IPB  : Updated to use IEEE.NUMERIC and 1076-93
-- Rev: 2.3 10Mar04 IPB  : Added sprintf functions and %c support
-- BRM Release
-- Rev: 1.0 01May04  IPB  : Pre Production
-- Rev: 2.00 27May04  IPB  : First Production Release
-- Rev: 2.1 24Jan05  IPB  : PA3/E Production Release
--
-- CoreABC Release
-- Rev: 2.4   24Jan08 IPB  : Production Release
--
-- SVN Revision Information:
-- SVN $Revision: 19112 $
-- SVN $Date: 2013-01-28 13:16:36 +0000 (Mon, 28 Jan 2013) $
--
-- Notes :
--  Supported Formats
--              %d decimal
--              %h hexadecimal Integer or known vector
--              %x hexadecimal Integer or vector with X's
--              %b binary
--              %s string
--              %t prints time in ns
--
--  Also Supports %6 i.e Width Field
--                %0 Fill with Zeros
--
---------------------------------------------------------------------------

library std;
use std.textio.all;


library COREABC_LIB;
use COREABC_LIB.top_COREABC_0_misc.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


---------------------------------------------------------------------------
-- Declarations etc
--

package top_COREABC_0_textio is

-- synthesis translate_off


constant MAXSTRLEN : INTEGER := 256;
type     T_NUMTYPE is ( NONE, INT, VECT, STRG);

type T_FMT is record
   f_type      : T_NUMTYPE;
   f_integer   : INTEGER;
   f_vector    : QWORD;
   f_length    : INTEGER;
   f_string    : STRING (1 to MAXSTRLEN);
end record;

type T_FMT_ARRAY is array ( integer range <> ) of T_FMT;

function is01 ( v: std_logic) return BOOLEAN;
function is01 ( v: unsigned; len : INTEGER) return BOOLEAN;

function strlen( str: STRING) return INTEGER;
function strcopy ( instr : STRING) return STRING;

procedure printf( str : STRING; params : T_FMT_ARRAY);
procedure printf( str : STRING; params : T_FMT);
procedure printf( str : STRING );

procedure sprintf( strout : out STRING; str : STRING; params : T_FMT_ARRAY);
procedure sprintf( strout : out STRING; str : STRING; params : T_FMT);
procedure sprintf( strout : out STRING; str : STRING );

procedure ifprintf( enable : BOOLEAN; str : STRING; params : T_FMT_ARRAY);
procedure ifprintf( enable : BOOLEAN; str : STRING; params : T_FMT);
procedure ifprintf( enable : BOOLEAN; str : STRING );

function fmt ( x : INTEGER) return T_FMT;
function fmt ( x : std_logic_vector) return T_FMT;
function fmt ( x : unsigned) return T_FMT;
function fmt ( x : string ) return T_FMT;
function fmt ( x : character ) return T_FMT;
function fmt ( x : boolean ) return T_FMT;
function fmt ( x : std_logic) return T_FMT;

function inttostr( value : INTEGER; base : INTEGER;
                   numlen : INTEGER :=0; zeros: BOOLEAN:=FALSE) return STRING;


function inrange ( x, l: integer) return integer;

-- synthesis translate_on


end top_COREABC_0_textio;


-- synthesis translate_off

---------------------------------------------------------------------------
-- The Body
--

package body top_COREABC_0_textio is


 function inrange ( x, l: integer) return integer is
 begin
  if x<=l then return(x); else return(l);
  end if;
 end inrange;

---------------------------------------------------------------------------
-- Basic Character Converters
--

function to_char( x : INTEGER range 0 to 15) return character is
 begin
  case x is
    when 0  => return('0');
    when 1  => return('1');
    when 2  => return('2');
    when 3  => return('3');
    when 4  => return('4');
    when 5  => return('5');
    when 6  => return('6');
    when 7  => return('7');
    when 8  => return('8');
    when 9  => return('9');
    when 10 => return('A');
    when 11 => return('B');
    when 12 => return('C');
    when 13 => return('D');
    when 14 => return('E');
    when 15 => return('F');
  end case;
end to_char;

function to_char( v : std_logic ) return CHARACTER is
 begin
   case v is
    when '0' => return('0');
    when '1' => return('1');
    when 'L' => return('L');
    when 'H' => return('H');
    when 'Z' => return('Z');
    when 'X' => return('X');
    when 'U' => return('U');
    when '-' => return('-');
    when 'W' => return('W');
   end case;
 end to_char;

---------------------------------------------------------------------------
-- special std_logic_vector handling
--

function is01 ( v: std_logic) return BOOLEAN is
 begin
  return ( v='0' or v='1');
 end is01;

function is01 ( v: UNSIGNED ; len : INTEGER) return BOOLEAN is
 variable ok : BOOLEAN;
 begin
  ok := TRUE;
  for i in 0 to len-1 loop
    ok := ok and is01( v(i));
  end loop;
  return (ok);
 end is01;

---------------------------------------------------------------------------
-- String Functions
--

function strlen( str: STRING) return INTEGER is
 variable i: INTEGER;
 begin
  i:=1;
  while i<= MAXSTRLEN and str(i)/=NUL loop
   i:=i+1;
  end loop;
  return(i-1);
 end strlen;

function strcopy ( instr : STRING) return STRING is
 variable outstr : STRING (1 to MAXSTRLEN);
 variable i: INTEGER;
 begin
  outstr(1 to instr'length) := instr;
  outstr(instr'length+1) := NUL;
  return(outstr);
 end strcopy;

---------------------------------------------------------------------------
-- Number Printing Routines
--

function hexchar ( vect : UNSIGNED) return character is
 variable v : UNSIGNED ( 3 downto 0);
 variable char : CHARACTER;
 begin
   v := vect;
   if is01(v(0)) and is01(v(1)) and is01(v(2)) and is01(v(3)) then
      char := to_char (to_integer(v));
   elsif v(0)=v(1) and v(0)=v(2) and v(0)=v(3) then
      char:= to_char(v(0));
   else
      char:='?';
   end if;
   return(char);
 end hexchar;

function inttostr( value : INTEGER; base : INTEGER;
                   numlen : INTEGER :=0; zeros: BOOLEAN:=FALSE) return STRING is
 variable str : STRING (1 to MAXSTRLEN);
 variable s1  : STRING (MAXSTRLEN downto 1);
 variable pos,x,xn,x1 : INTEGER;
 begin
  if value=-2147483648 then
    str(1 to 9) := "UNDERFLOW";
    str(10) := NUL;
  else
    x := abs(value);
    pos := 0;
    while x>0 or pos=0 loop
      pos:=pos+1;
      xn := x / base;
      x1 := x - xn * base ;
      x  := xn;
      s1(pos) := to_char(x1);
    end loop;
    if value<0  then
      pos:=pos+1;
      s1(pos):='-';
    end if;
    if pos>numlen then
      str(1 to pos) := s1 (pos downto 1);
      str(pos+1) := NUL;
    else
      case ZEROS is
        when TRUE  => str := (others => '0');
        when FALSE => str := (others => ' ');
      end case;
      str( (1+numlen-pos) to numlen) := s1(pos downto 1);
      str(numlen+1) := NUL;
    end if;
  end if;
  return(str);
 end inttostr;


function vecttostr( value : UNSIGNED; len : INTEGER; base : INTEGER;
                    numlen : INTEGER :=0;
                    zeros: BOOLEAN:=FALSE) return STRING is
 variable str : STRING (1 to MAXSTRLEN);
 variable s1  : STRING (MAXSTRLEN downto 1);
 variable pos, len4 : INTEGER;
 variable x : QWORD;
 variable vect4 : UNSIGNED(3 downto 0);
 begin
  x:=value;
  if len<64 then
    x(63 downto len) := (others =>'0');
  end if;
  case base is
   when 2   => for i in 0 to len-1 loop
                   s1(i+1) := to_char(value(i));
               end loop;
               pos:=len;
   when 16  => len4 := ((len+3)/4);
               for i in 0 to len4-1 loop
                 vect4 := x( 3+(4*i) downto 4*i);
                 s1(i+1) := hexchar(vect4);
               end loop;
               pos:=len4;
   when others =>  s1:=strcopy("ESAB LAGELLI");
  end case;
  if pos>numlen then
    str(1 to pos) := s1 (pos downto 1);
    str(pos+1) := NUL;
  else
    case ZEROS is
      when TRUE  => str := (others => '0');
      when FALSE => str := (others => ' ');
    end case;
    str( (1+numlen-pos) to numlen) := s1(pos downto 1);
    str(numlen+1) := NUL;
  end if;
  return(str);
 end vecttostr;

---------------------------------------------------------------------------
-- Multi Type input handlers
--

function fmt ( x : BOOLEAN) return T_FMT is
 variable fm : T_FMT;
 begin
  fm.f_type := INT;
  if x then fm.f_integer := 1;
       else fm.f_integer := 0;
  end if;
  return(fm);
 end fmt;

function fmt ( x : INTEGER) return T_FMT is
 variable fm : T_FMT;
 begin
  fm.f_type := INT;
  fm.f_integer := x;
  return(fm);
 end fmt;

function fmt ( x : UNSIGNED) return T_FMT is
 variable fm : T_FMT;
 begin
  fm.f_type   := VECT;
  fm.f_vector(x'length-1 downto 0) := x;
  fm.f_length := x'length;
  return(fm);
 end fmt;

function fmt ( x : std_logic_vector) return T_FMT is
 variable fm : T_FMT;
 begin
  fm.f_type   := VECT;
  fm.f_vector(x'length-1 downto 0) := to_unsigned(x);
  fm.f_length := x'length;
  return(fm);
 end fmt;

function fmt ( x : string ) return T_FMT is
 variable fm : T_FMT;
 begin
  fm.f_type   := STRG;
  fm.f_string(x'range) := x;
  if x'length+1<MAXSTRLEN then
    fm.f_string(x'length+1) := NUL;
  end if;
  fm.f_length := x'length;
  return(fm);
 end fmt;

function fmt ( x : character ) return T_FMT is
 variable fm : T_FMT;
 begin
  fm.f_type   := STRG;
  fm.f_string(1) := x;
  fm.f_string(2) := NUL;
  fm.f_length := 1;
  return(fm);
 end fmt;

function fmt ( x : std_logic) return T_FMT is
 variable fm : T_FMT;
 variable x1 : UNSIGNED ( 0 downto 0);
 begin
  x1(0) := x;
  fm.f_type   := VECT;
  fm.f_vector(x1'length-1 downto 0) := x1;
  fm.f_length := x1'length;
  return(fm);
 end fmt;

---------------------------------------------------------------------------
-- The Main Print Routine
--



procedure theprintf( SPRINTF : BOOLEAN;
                     strout    : out string;
                     str     : STRING;
                     Params  : T_FMT_ARRAY ) is
 variable ll : LINE;
 variable str1,pstr : STRING (1 to MAXSTRLEN);
 variable ip,op,pp,iplen : INTEGER;
 variable numlen : INTEGER;
 variable zeros  : BOOLEAN;
 variable more   : BOOLEAN;
 variable intval : INTEGER;
 variable vectval: QWORD;
 variable len    : INTEGER;
 variable ftype  : T_NUMTYPE;
 variable tnow   : INTEGER;
 begin
   iplen := str'length;
   ip:=1; op:=0; pp:=params'low;
   while ip<=iplen and str( inrange(ip,iplen))/=NUL loop
     if str(ip) = '%' then
       more:=TRUE;
       numlen:=0; zeros:=FALSE;
       while more loop
          more:=FALSE;
          ip:=ip+1;
          ftype  := params(pp).f_type;
          intval := params(pp).f_integer;
          vectval:= params(pp).f_vector;
          len    := params(pp).f_length;
          case str(ip) is
            when '0'     => ZEROS:=TRUE;
                            more:=TRUE;
            when '1' to '9' =>
                            numlen:= 10* numlen + character'pos(str(ip))-48;
                            more := TRUE;
            when '%'     => pstr := strcopy("%");
            when 'd'     => case ftype is
                              when INT  => pstr := inttostr(intval,10,numlen,zeros);
                              when VECT => if is01(vectval,len) then
                                             intval:= to_integer(vectval(len-1 downto 0));
                                             pstr := inttostr(intval,10,numlen,zeros);
                                           end if;
                              when others => pstr := strcopy("INVALID PRINTF d:" & str);
                            end case;
                            pp:=pp+1;
            when 't'     => tnow := NOW / 1 ns;
                            pstr := inttostr(tnow,10,numlen,zeros);
            when 'h'     => case ftype is
                              when INT  => pstr := inttostr(intval,16,numlen,zeros);
                              when VECT => if is01(vectval,len) then
                                             intval:= to_integer(vectval(len-1 downto 0));
                                             pstr  := inttostr(intval,16,numlen,zeros);
                                           end if;
                              when others => pstr := strcopy("INVALID PRINTF h:" & str);
                            end case;
                            pp:=pp+1;
            when 'u'     => case ftype is
                              when INT  => pstr := inttostr(intval,16,numlen,zeros);
                              when VECT => if is01(vectval,len) then
                                             intval:= to_integer(vectval(len-1 downto 0));
                                             pstr  := inttostr(intval,16,numlen,zeros);
                                           end if;
                              when others => pstr := strcopy("INVALID PRINTF h:" & str);
                            end case;
                            pp:=pp+1;
            when 'b'     => case ftype is
                              when INT    => vectval := ( others => '0');
                                             vectval(31 downto 0) := to_unsigned(intval,32);
                                             len:=1;
                                             for i in 1 to 31 loop
                                             if vectval(i)='1' then
                                               len:=i+1;	   -- Fix 3Oct06 CoreABC
                                             end if;
                                             end loop;
                                             pstr := vecttostr(vectval,len,2,numlen,zeros);
                              when VECT   => pstr := vecttostr(vectval,len,2,numlen,zeros);
                              when others => pstr := strcopy("INVALID PRINTF b:" & str);
                            end case;
                            pp:=pp+1;
            when 'x'     => case ftype is
                              when INT  => pstr := inttostr(intval,16,numlen,zeros);
                              when VECT => pstr := vecttostr(vectval,len,16,numlen,zeros);
                              when others => pstr := strcopy("INVALID PRINTF x:" & str);
                            end case;
                            pp:=pp+1;
            when 's'     => case ftype is
                              when STRG   => pstr:=params(pp).f_string;
                              when others => pstr := strcopy("INVALID PRINTF s:" & str);
                            end case;
                            pp:=pp+1;
            when 'c'     => case ftype is
                              when STRG   => pstr:=params(pp).f_string;
                              when others => pstr := strcopy("INVALID PRINTF s:" & str);
                            end case;
                            pp:=pp+1;
            when others  => pstr := strcopy("ILLEGAL FORMAT");
                            assert FALSE
                             report "TEXTIO Processing Problem"
                             severity FAILURE;
          end case;
       end loop;
       len := strlen(pstr);
       for i in 1 to len loop
          str1(op+i) := pstr(i);
       end loop;
       ip:=ip+1;
       op:=op+len;
     elsif str(ip)='\' then
       case str(ip+1) is
         when 'n' => str1(op+1):= NUL;
                     if not SPRINTF then
                       write( ll , str1 );
                       writeline( output, ll);
                     end if;
                     op := 0; ip:=ip+1;
                     str1(op+1) := NUL;
         when others =>
       end case;
       ip:=ip+1;
     else
      op:=op+1;
      str1(op) := str(ip);
      ip:=ip+1;
     end if;
   end loop;
   if op>0 then
     str1(op+1):=NUL;
     if SPRINTF then
       strout := str1(strout'range);
     else
       write( ll , str1 );
       writeline(output, ll);
     end if;
   end if;
 end theprintf;

-------------------------------------------------------------------------------------

procedure printf( str : STRING; params : T_FMT ) is
variable strout : STRING (1 to MAXSTRLEN);
variable f_fmt : T_FMT_ARRAY ( 1 to 1);
begin
  f_fmt(1) := params;
  theprintf(FALSE,strout,str,f_fmt);
end printf;

procedure printf( str : STRING ) is
variable strout : STRING (1 to MAXSTRLEN);
variable fm : T_FMT_ARRAY ( 1 to 1);
begin
  fm(1).f_type := NONE;
  theprintf(FALSE,strout,str,fm);
end printf;

procedure printf(  str    : STRING;
                   Params : T_FMT_ARRAY ) is
variable strout : STRING (1 to MAXSTRLEN);
begin
  theprintf(FALSE,strout,str,Params);
end printf;


-------------------------------------------------------------------------------------

procedure sprintf( strout : out STRING;
                   str    : STRING;
                   Params : T_FMT_ARRAY ) is
begin
  theprintf( TRUE, strout, str,Params);
end sprintf;


procedure sprintf( strout : out STRING; str : STRING; params : T_FMT ) is
variable f_fmt : T_FMT_ARRAY ( 1 to 1);
begin
  f_fmt(1) := params;
  theprintf( TRUE,strout,str,f_fmt);
end sprintf;


procedure sprintf( strout : out STRING; str : STRING ) is
variable fm : T_FMT_ARRAY ( 1 to 1);
begin
  fm(1).f_type := NONE;
  theprintf( TRUE,strout,str,fm);
end sprintf;


-------------------------------------------------------------------------------------








procedure ifprintf( enable : BOOLEAN;
                    str    : STRING;
                    Params : T_FMT_ARRAY ) is
begin
 if enable then
   printf(str,params);
 end if;
end ifprintf;

procedure ifprintf( enable : BOOLEAN; str : STRING; params : T_FMT ) is
variable f_fmt : T_FMT_ARRAY ( 1 to 1);
begin
 if enable then
    f_fmt(1) := params;
    printf(str,f_fmt);
 end if;
end ifprintf;

procedure ifprintf( enable : BOOLEAN; str : STRING ) is
variable fm : T_FMT_ARRAY ( 1 to 1);
begin
 if enable then
   fm(1).f_type := NONE;
   printf(str,fm);
 end if;
end ifprintf;



end top_COREABC_0_textio;



---------------------------------------------------------------------------
-- This a Test For the above Routines
--

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;


use std.textio.all;
use work.top_COREABC_0_textio.all;


entity top_COREABC_0_textio_test is

end top_COREABC_0_textio_test;

architecture TB of top_COREABC_0_textio_test is
begin

process
variable dw : std_logic_vector ( 9 downto 0);
variable xx : std_logic_vector(15 downto 0);
variable ll : LINE;
file FSTR   : text  open write_mode is "Cpulog.txt" ;
variable strout : STRING(1 to 80);
begin
  wait for 1 ns ;
  printf("Textio Test strings v1.2");
  printf("Note I think MTI uses variable width Fonts");
  xx:= conv_std_logic_vector( 16#AAAA#,16);
  printf("Using 04x %04x",fmt(xx));
  printf("Using 04u %04u",fmt(xx));
  printf("-d...123456 = %d",fmt(123456));
  printf("-8d..123456 = %8d",fmt(123456));
  printf("-08d.123456 = %08d",fmt(123456));
  printf("-02d.123456 = %02d",fmt(123456));
  printf("This is a Binary %016b",fmt(16#55AA#));
  printf("This is a Decimal %d",fmt(1234));
  printf("This is a Hex %h",fmt(16#1234#));
  printf("This is a Simple String");
  printf("This is a Simple String with a CRLF\nin the middle");
  printf("Read Location %d = %h",fmt(123456)&fmt(16#654321#));
  printf("-d...-123456 = %d",fmt(-123456));
  printf("-d...-123456 = %08d",fmt(-123456));
  dw := ( others => '0');
  printf("-x...000 = %x",fmt(dw));
  dw := "0101010101";
  printf("-x...155 = %x",fmt(dw));
  printf("-b...155 = %b",fmt(dw));
  dw := "0101U10101";
  printf("-x...1?5 = %x",fmt(dw));
  printf("-b...1?5 = %b",fmt(dw));
  dw := "01UUUU0101";
  printf("-x...1U5 = %x",fmt(dw));
  printf("-b...1U5 = %b",fmt(dw));
  printf(" Time is %t ns ");


  sprintf( strout , "SPRINTF Read Location %d = %h",fmt(123456)&fmt(16#654321#));
  printf("OUT STRING %s",fmt(strout));
  write( ll , strout );
  writeline(FSTR, ll);
  file_close( FSTR);


  wait for 1 ns;
  wait;
 end process;


end TB;

-- synthesis translate_on







