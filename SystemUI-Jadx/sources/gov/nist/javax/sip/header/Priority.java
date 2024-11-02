package gov.nist.javax.sip.header;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class Priority extends SIPHeader {
    private static final long serialVersionUID = 3837543366074322106L;
    protected String priority;

    public Priority() {
        super("Priority");
    }

    @Override // gov.nist.javax.sip.header.SIPHeader
    public final String encodeBody() {
        return this.priority;
    }

    public final void setPriority(String str) {
        if (str != null) {
            this.priority = str;
            return;
        }
        throw new NullPointerException("JAIN-SIP Exception,Priority, setPriority(), the priority parameter is null");
    }
}
