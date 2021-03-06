/* MKoda 
 * Peer to Peer File Sharing System with a search engine
 * Please follow the readme file for instructions on how to setup and run the system 
 * Written by : Arun Natarajan, Manikandan Sivanesan, Koushik Krishnakumar, Dinesh Radha Kirshan
*/
package general;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.BitSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.StringTokenizer;

public class genfunc {

	public byte[] convIntBary_2(int ival) {
		return new byte[] {(byte)(ival >>> 8),(byte)ival};
	}
	
	public byte[] convIntBary(int ival) {
		return new byte[] {(byte)(ival >>> 24),(byte)(ival >>> 16),(byte)(ival >>> 8),(byte)ival};
	}

	public int convBaryInt(byte [] bary) {

		if (bary.length==4){
			return (int) (bary[0] << 24)+ ((bary[1] & 0xFF) << 16) + ((bary[2] & 0xFF) << 8) + (bary[3] & 0xFF);
		}
		else if (bary.length==2){
			return (int) ((bary[0] & 0xFF) << 8) + (bary[1] & 0xFF);
		}

		return 0;
	}
	
	

	public void printbary(byte[] bary) {
		for (int i = 0; i < bary.length; i++) {
			int t= bary[i];
			String temp = "0000";
			temp=temp.concat(Integer.toHexString(t));
			temp=temp.toUpperCase();
			System.out.printf("%c%c",temp.charAt(temp.length()-2),temp.charAt(temp.length()-1));
		}
		System.out.println("");
	}

	public byte[] hexStringToByteArray(String s) {
		int len = s.length();
		byte[] data = new byte[len / 2];
		for (int i = 0; i < len; i += 2) {
			data[i / 2] = (byte) ((Character.digit(s.charAt(i), 16) << 4)
					+ Character.digit(s.charAt(i+1), 16));
		}
		return data;
	}
	
	public String ByteArraytohexString(byte[] bary){
		
		String result = "";
		  for (int i=0; i < bary.length; i++) {
		    result +=Integer.toString( ( bary[i] & 0xff ) + 0x100, 16).substring( 1 );
		  }
		  return (result.toUpperCase());
		
		
	}
	
	//	 Returns a bitset containing the values in bytes.
    // The byte-ordering of bytes must be big-endian which means the most significant bit is in element 0.
    public  BitSet fromByteArray(byte[] bytes) {
        BitSet bits = new BitSet();
        for (int i=0; i<bytes.length*8; i++) {
            if ((bytes[bytes.length-i/8-1]&(1<<(i%8))) > 0) {
                bits.set(i);
            }
        }
        return bits;
    }
    
    
    public byte[] getIpAsArrayOfByte(String ipAddress) {

        StringTokenizer st = new StringTokenizer(ipAddress, ".");
        byte[] ip = new byte[4];
        int i = 0;

        while (st.hasMoreTokens()) {
            ip[i++] = (byte)Integer.parseInt(st.nextToken());
        }

        return ip;
}

	public byte[] intArraytoByteArray(int[] iary) {
		byte[] bary= new byte[10];
		int index=0;
		for (int i = 0; i < iary.length; i++) {
			System.arraycopy(this.convIntBary_2(iary[i]), 0, bary, index, 2);
			index+=2;
		}
			
		return bary;
	}
	
	public int[] byteArraytoIntArray(byte[] bary) {
		int[] iary= new int[5];
		byte[] tmp=new byte[2];
		for (int i = 0; i < iary.length; i++) {
			System.arraycopy(bary, i*2, tmp, 0 , 2);
			iary[i]=this.convBaryInt(tmp);
		}
		return iary;
	}
	
	

    
	
}	

