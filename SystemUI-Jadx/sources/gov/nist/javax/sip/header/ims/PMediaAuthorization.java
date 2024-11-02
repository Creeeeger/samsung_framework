package gov.nist.javax.sip.header.ims;

import gov.nist.javax.sip.header.SIPHeader;
import javax.sip.InvalidArgumentException;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class PMediaAuthorization extends SIPHeader implements PMediaAuthorizationHeader {
    private static final long serialVersionUID = -6463630258703731133L;
    private String token;

    public PMediaAuthorization() {
        super("P-Media-Authorization");
    }

    @Override // gov.nist.core.GenericObject
    public final Object clone() {
        PMediaAuthorization pMediaAuthorization = (PMediaAuthorization) super.clone();
        String str = this.token;
        if (str != null) {
            pMediaAuthorization.token = str;
        }
        return pMediaAuthorization;
    }

    @Override // gov.nist.javax.sip.header.SIPHeader
    public final String encodeBody() {
        return this.token;
    }

    @Override // gov.nist.javax.sip.header.SIPObject, gov.nist.core.GenericObject
    public final boolean equals(Object obj) {
        if (obj instanceof PMediaAuthorizationHeader) {
            return this.token.equals(((PMediaAuthorization) ((PMediaAuthorizationHeader) obj)).token);
        }
        return false;
    }

    public final void setMediaAuthorizationToken(String str) {
        if (str != null && str.length() != 0) {
            this.token = str;
            return;
        }
        throw new InvalidArgumentException(" the Media-Authorization-Token parameter is null or empty");
    }
}
