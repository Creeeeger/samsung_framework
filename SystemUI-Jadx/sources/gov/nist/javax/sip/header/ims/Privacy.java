package gov.nist.javax.sip.header.ims;

import gov.nist.javax.sip.header.SIPHeader;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class Privacy extends SIPHeader implements PrivacyHeader {
    private String privacy;

    public Privacy() {
        super("Privacy");
    }

    @Override // gov.nist.core.GenericObject
    public final Object clone() {
        Privacy privacy = (Privacy) super.clone();
        String str = this.privacy;
        if (str != null) {
            privacy.privacy = str;
        }
        return privacy;
    }

    @Override // gov.nist.javax.sip.header.SIPHeader
    public final String encodeBody() {
        return this.privacy;
    }

    @Override // gov.nist.javax.sip.header.SIPObject, gov.nist.core.GenericObject
    public final boolean equals(Object obj) {
        if (obj instanceof PrivacyHeader) {
            return this.privacy.equals(((Privacy) ((PrivacyHeader) obj)).privacy);
        }
        return false;
    }

    public final void setPrivacy(String str) {
        if (str != null && str != "") {
            this.privacy = str;
            return;
        }
        throw new NullPointerException("JAIN-SIP Exception,  Privacy, setPrivacy(), privacy value is null or empty");
    }

    public Privacy(String str) {
        this();
        this.privacy = str;
    }
}
