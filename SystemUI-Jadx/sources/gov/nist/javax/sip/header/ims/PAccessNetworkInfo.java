package gov.nist.javax.sip.header.ims;

import gov.nist.javax.sip.header.ParametersHeader;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class PAccessNetworkInfo extends ParametersHeader implements PAccessNetworkInfoHeader {
    private String accessType;
    private Object extendAccessInfo;

    public PAccessNetworkInfo() {
        super("P-Access-Network-Info");
        this.parameters.setSeparator(";");
    }

    @Override // gov.nist.javax.sip.header.ParametersHeader, gov.nist.core.GenericObject
    public final Object clone() {
        return (PAccessNetworkInfo) super.clone();
    }

    @Override // gov.nist.javax.sip.header.SIPHeader
    public final String encodeBody() {
        StringBuffer stringBuffer = new StringBuffer();
        String str = this.accessType;
        if (str != null) {
            stringBuffer.append(str);
        }
        if (!this.parameters.isEmpty()) {
            stringBuffer.append("; " + this.parameters.encode());
        }
        if (this.extendAccessInfo != null) {
            stringBuffer.append("; " + this.extendAccessInfo.toString());
        }
        return stringBuffer.toString();
    }

    @Override // gov.nist.javax.sip.header.SIPObject, gov.nist.core.GenericObject
    public final boolean equals(Object obj) {
        if ((obj instanceof PAccessNetworkInfoHeader) && super.equals(obj)) {
            return true;
        }
        return false;
    }

    public final void setAccessType(String str) {
        if (str != null) {
            this.accessType = str;
            return;
        }
        throw new NullPointerException("JAIN-SIP Exception, P-Access-Network-Info, setAccessType(), the accessType parameter is null.");
    }

    public PAccessNetworkInfo(String str) {
        this();
        setAccessType(str);
    }
}
