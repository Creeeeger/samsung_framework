package gov.nist.javax.sip.header;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class Subject extends SIPHeader {
    private static final long serialVersionUID = -6479220126758862528L;
    protected String subject;

    public Subject() {
        super("Subject");
    }

    @Override // gov.nist.javax.sip.header.SIPHeader
    public final String encodeBody() {
        String str = this.subject;
        if (str != null) {
            return str;
        }
        return "";
    }

    public final void setSubject(String str) {
        if (str != null) {
            this.subject = str;
            return;
        }
        throw new NullPointerException("JAIN-SIP Exception,  Subject, setSubject(), the subject parameter is null");
    }
}
