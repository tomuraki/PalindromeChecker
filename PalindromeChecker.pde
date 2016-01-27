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
  String lc=sWord.toLowerCase();
  return lc;
}
public String noSpaces(String sWord)
{
  String empty = "";
  for(int i=0; i<sWord.length(); i++)
  if(sWord.charAt(i) != ' ')
    empty=empty+sWord.charAt(i);
    return empty; 
}
public String numLetters(String sString){
  String nothing= "";
  for(int i=0; i<sString.length(); i++)
   if(Character.isLetter(sString.charAt(i))==true)
    nothing=nothing+i;
   return nothing;
}
public boolean palindrome(String word)
{
  int nLast=word.length()-1;
  String sWord= "";
  for(int nI=nLast; nI>=0; nI--)
    sWord=sWord+word.substring(nI,nI+1);
  System.out.println(sWord);
  if(sWord.equals(word))
      return true;
    return false;
}  
 







  




