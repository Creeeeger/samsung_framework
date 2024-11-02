package gov.nist.javax.sip.message;

import gov.nist.core.GenericObject;
import gov.nist.core.InternalErrorHandler;
import gov.nist.javax.sip.header.CSeq;
import gov.nist.javax.sip.header.CallID;
import gov.nist.javax.sip.header.ContentLength;
import gov.nist.javax.sip.header.ContentType;
import gov.nist.javax.sip.header.From;
import gov.nist.javax.sip.header.MaxForwards;
import gov.nist.javax.sip.header.SIPHeader;
import gov.nist.javax.sip.header.SIPHeaderList;
import gov.nist.javax.sip.header.SIPHeaderNamesCache;
import gov.nist.javax.sip.header.To;
import java.io.UnsupportedEncodingException;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.concurrent.ConcurrentLinkedQueue;
import javax.sip.header.Header;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public abstract class SIPMessage extends MessageObject {
    public static final String CONTENT_TYPE_LOWERCASE = SIPHeaderNamesCache.toLowerCase("Content-Type");
    protected Object applicationData;
    protected CSeq cSeqHeader;
    protected CallID callIdHeader;
    protected ContentLength contentLengthHeader;
    protected From fromHeader;
    protected MaxForwards maxForwardsHeader;
    private String messageContent;
    private byte[] messageContentBytes;
    private Object messageContentObject;
    protected boolean nullRequest;
    protected int size;
    protected To toHeader;
    private String contentEncodingCharset = "UTF-8";
    protected LinkedList<String> unrecognizedHeaders = new LinkedList<>();
    protected ConcurrentLinkedQueue<SIPHeader> headers = new ConcurrentLinkedQueue<>();
    private Hashtable<String, SIPHeader> nameTable = new Hashtable<>();

    static {
        SIPHeaderNamesCache.toLowerCase("Error-Info");
        SIPHeaderNamesCache.toLowerCase("Contact");
        SIPHeaderNamesCache.toLowerCase("Via");
        SIPHeaderNamesCache.toLowerCase("Authorization");
        SIPHeaderNamesCache.toLowerCase("Route");
        SIPHeaderNamesCache.toLowerCase("Record-Route");
        SIPHeaderNamesCache.toLowerCase("Content-Disposition");
        SIPHeaderNamesCache.toLowerCase("Content-Encoding");
        SIPHeaderNamesCache.toLowerCase("Content-Language");
        SIPHeaderNamesCache.toLowerCase("Expires");
    }

    public SIPMessage() {
        try {
            attachHeader(new ContentLength(0));
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00b7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void attachHeader(gov.nist.javax.sip.header.SIPHeader r5) {
        /*
            Method dump skipped, instructions count: 269
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: gov.nist.javax.sip.message.SIPMessage.attachHeader(gov.nist.javax.sip.header.SIPHeader):void");
    }

    @Override // gov.nist.core.GenericObject
    public Object clone() {
        SIPMessage sIPMessage = (SIPMessage) super.clone();
        sIPMessage.nameTable = new Hashtable<>();
        sIPMessage.fromHeader = null;
        sIPMessage.toHeader = null;
        sIPMessage.cSeqHeader = null;
        sIPMessage.callIdHeader = null;
        sIPMessage.contentLengthHeader = null;
        sIPMessage.maxForwardsHeader = null;
        if (this.headers != null) {
            sIPMessage.headers = new ConcurrentLinkedQueue<>();
            Iterator<SIPHeader> it = this.headers.iterator();
            while (it.hasNext()) {
                SIPHeader sIPHeader = (SIPHeader) it.next().clone();
                if (sIPHeader != null) {
                    try {
                        if (!(sIPHeader instanceof SIPHeaderList) || !((SIPHeaderList) sIPHeader).isEmpty()) {
                            sIPMessage.attachHeader(sIPHeader);
                        }
                    } catch (SIPDuplicateHeaderException unused) {
                    }
                } else {
                    throw new IllegalArgumentException("null header!");
                }
            }
        }
        byte[] bArr = this.messageContentBytes;
        if (bArr != null) {
            sIPMessage.messageContentBytes = (byte[]) bArr.clone();
        }
        Object obj = this.messageContentObject;
        if (obj != null) {
            sIPMessage.messageContentObject = GenericObject.makeClone(obj);
        }
        sIPMessage.unrecognizedHeaders = this.unrecognizedHeaders;
        return sIPMessage;
    }

    @Override // gov.nist.core.GenericObject
    public String encode() {
        String str;
        StringBuffer stringBuffer = new StringBuffer();
        Iterator<SIPHeader> it = this.headers.iterator();
        while (it.hasNext()) {
            SIPHeader next = it.next();
            if (!(next instanceof ContentLength)) {
                stringBuffer.append(next.encode());
            }
        }
        Iterator<String> it2 = this.unrecognizedHeaders.iterator();
        while (it2.hasNext()) {
            stringBuffer.append(it2.next());
            stringBuffer.append("\r\n");
        }
        stringBuffer.append(this.contentLengthHeader.encode());
        stringBuffer.append("\r\n");
        Object obj = this.messageContentObject;
        if (obj != null) {
            if (obj == null && (obj = this.messageContent) == null && (obj = this.messageContentBytes) == null) {
                obj = null;
            }
            stringBuffer.append(obj.toString());
        } else {
            String str2 = this.messageContent;
            if (str2 != null || this.messageContentBytes != null) {
                if (str2 == null) {
                    try {
                        byte[] bArr = this.messageContentBytes;
                        ContentType contentType = (ContentType) getHeaderLowerCase(CONTENT_TYPE_LOWERCASE);
                        if (contentType != null) {
                            str = contentType.getParameter("charset");
                            if (str == null) {
                                str = this.contentEncodingCharset;
                            }
                        } else {
                            str = this.contentEncodingCharset;
                        }
                        str2 = new String(bArr, str);
                    } catch (UnsupportedEncodingException e) {
                        InternalErrorHandler.handleException(e);
                        throw null;
                    }
                }
                stringBuffer.append(str2);
            }
        }
        return stringBuffer.toString();
    }

    @Override // gov.nist.core.GenericObject
    public boolean equals(Object obj) {
        if (!obj.getClass().equals(getClass())) {
            return false;
        }
        SIPMessage sIPMessage = (SIPMessage) obj;
        if (this.nameTable.size() != sIPMessage.nameTable.size()) {
            return false;
        }
        for (SIPHeader sIPHeader : this.nameTable.values()) {
            SIPHeader sIPHeader2 = sIPMessage.nameTable.get(SIPHeaderNamesCache.toLowerCase(sIPHeader.getName()));
            if (sIPHeader2 == null || !sIPHeader2.equals(sIPHeader)) {
                return false;
            }
        }
        return true;
    }

    public final Header getHeaderLowerCase(String str) {
        if (str != null) {
            SIPHeader sIPHeader = this.nameTable.get(str);
            if (sIPHeader instanceof SIPHeaderList) {
                return ((SIPHeaderList) sIPHeader).getFirst();
            }
            return sIPHeader;
        }
        throw new NullPointerException("bad name");
    }

    public final int hashCode() {
        CallID callID = this.callIdHeader;
        if (callID != null) {
            return callID.encodeBody().hashCode();
        }
        throw new RuntimeException("Invalid message! Cannot compute hashcode! call-id header is missing !");
    }
}
