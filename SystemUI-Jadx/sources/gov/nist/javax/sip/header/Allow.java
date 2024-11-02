package gov.nist.javax.sip.header;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class Allow extends SIPHeader {
    private static final long serialVersionUID = -3105079479020693930L;
    protected String method;

    public Allow() {
        super("Allow");
    }

    @Override // gov.nist.javax.sip.header.SIPHeader
    public final String encodeBody() {
        return this.method;
    }

    public final void setMethod(String str) {
        if (str != null) {
            this.method = str;
            return;
        }
        throw new NullPointerException("JAIN-SIP Exception, Allow, setMethod(), the method parameter is null.");
    }

    public Allow(String str) {
        super("Allow");
        this.method = str;
    }
}
