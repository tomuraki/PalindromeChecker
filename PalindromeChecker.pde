public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public String noCapitals(String sWord)
{
  String nc=sWord.toLowerCase();
  System.out.println(nc);
  return nc;
}
public String noSpaces(String sWord)
{
  String ns = "";
  for(int i=0; i<sWord.length(); i++)
  if(sWord.charAt(i) != ' ')
    ns=ns+sWord.charAt(i);
  //System.out.println(ns);
    return ns; 
}
public String onlyLetters(String sString){
  String ol= "";
  for(int i=0; i<sString.length(); i++)
   if(Character.isLetter(sString.charAt(i)))
    ol=ol+sString.charAt(i);
  System.out.println(ol);
   return ol;
}
public String reverse(String sWord)
{
  int nLast=sWord.length()-1;
  String rev= "";
  for(int nI=nLast; nI>=0; nI--)
    rev=rev+sWord.substring(nI,nI+1);
  //System.out.println(rev);
  return rev;
}
public boolean palindrome(String word)
{
  String s=noSpaces(word);
  String c=noCapitals(word);
  if(word.equals(reverse(word)))
    return true;
  if(s.equals(reverse(s)))
    return true;
  if(c.equals(noSpaces(c)))
    return true;

    

  else
    return false;
}  
 







  




