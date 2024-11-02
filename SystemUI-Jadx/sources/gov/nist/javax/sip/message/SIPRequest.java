package gov.nist.javax.sip.message;

import gov.nist.javax.sip.header.CSeq;
import gov.nist.javax.sip.header.RequestLine;
import java.util.HashSet;
import java.util.Hashtable;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class SIPRequest extends SIPMessage {
    public static final Hashtable nameTable;
    private static final long serialVersionUID = 3360720013577322927L;
    private RequestLine requestLine;

    static {
        HashSet hashSet = new HashSet();
        nameTable = new Hashtable();
        hashSet.add("INVITE");
        hashSet.add("UPDATE");
        hashSet.add("SUBSCRIBE");
        hashSet.add("NOTIFY");
        hashSet.add("REFER");
        putName("INVITE");
        putName("BYE");
        putName("CANCEL");
        putName("ACK");
        putName("PRACK");
        putName("INFO");
        putName("MESSAGE");
        putName("NOTIFY");
        putName("OPTIONS");
        putName("PRACK");
        putName("PUBLISH");
        putName("REFER");
        putName("REGISTER");
        putName("SUBSCRIBE");
        putName("UPDATE");
    }

    public static String getCannonicalName(String str) {
        Hashtable hashtable = nameTable;
        if (hashtable.containsKey(str)) {
            return (String) hashtable.get(str);
        }
        return str;
    }

    public static void putName(String str) {
        nameTable.put(str, str);
    }

    @Override // gov.nist.javax.sip.message.SIPMessage, gov.nist.core.GenericObject
    public final Object clone() {
        SIPRequest sIPRequest = (SIPRequest) super.clone();
        RequestLine requestLine = this.requestLine;
        if (requestLine != null) {
            sIPRequest.requestLine = (RequestLine) requestLine.clone();
        }
        return sIPRequest;
    }

    @Override // gov.nist.javax.sip.message.SIPMessage, gov.nist.core.GenericObject
    public final String encode() {
        CSeq cSeq;
        RequestLine requestLine = this.requestLine;
        if (requestLine != null) {
            if (requestLine.getMethod() == null && (cSeq = this.cSeqHeader) != null) {
                this.requestLine.setMethod(getCannonicalName(cSeq.getMethod()));
            }
            return this.requestLine.encode() + super.encode();
        }
        if (this.nullRequest) {
            return "\r\n\r\n";
        }
        return super.encode();
    }

    @Override // gov.nist.javax.sip.message.SIPMessage, gov.nist.core.GenericObject
    public final boolean equals(Object obj) {
        if (!SIPRequest.class.equals(obj.getClass()) || !this.requestLine.equals(((SIPRequest) obj).requestLine) || !super.equals(obj)) {
            return false;
        }
        return true;
    }

    public final String toString() {
        return encode();
    }
}
