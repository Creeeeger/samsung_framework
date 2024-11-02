package gov.nist.javax.sip.header;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class Organization extends SIPHeader {
    private static final long serialVersionUID = -2775003113740192712L;
    protected String organization;

    public Organization() {
        super("Organization");
    }

    @Override // gov.nist.javax.sip.header.SIPHeader
    public final String encodeBody() {
        return this.organization;
    }

    public final void setOrganization(String str) {
        if (str != null) {
            this.organization = str;
            return;
        }
        throw new NullPointerException("JAIN-SIP Exception, Organization, setOrganization(), the organization parameter is null");
    }
}
