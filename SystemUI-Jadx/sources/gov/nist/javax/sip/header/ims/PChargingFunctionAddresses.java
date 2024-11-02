package gov.nist.javax.sip.header.ims;

import gov.nist.javax.sip.header.ParametersHeader;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class PChargingFunctionAddresses extends ParametersHeader {
    public PChargingFunctionAddresses() {
        super("P-Charging-Function-Addresses");
    }

    @Override // gov.nist.javax.sip.header.SIPHeader
    public final String encodeBody() {
        StringBuffer stringBuffer = new StringBuffer();
        if (!this.duplicates.isEmpty()) {
            stringBuffer.append(this.duplicates.encode());
        }
        return stringBuffer.toString();
    }
}
