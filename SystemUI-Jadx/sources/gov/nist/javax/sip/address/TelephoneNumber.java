package gov.nist.javax.sip.address;

import gov.nist.core.NameValueList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class TelephoneNumber extends NetObject {
    protected boolean isglobal;
    protected NameValueList parameters = new NameValueList();
    protected String phoneNumber;

    @Override // gov.nist.core.GenericObject
    public final Object clone() {
        TelephoneNumber telephoneNumber = (TelephoneNumber) super.clone();
        NameValueList nameValueList = this.parameters;
        if (nameValueList != null) {
            telephoneNumber.parameters = (NameValueList) nameValueList.clone();
        }
        return telephoneNumber;
    }

    @Override // gov.nist.core.GenericObject
    public final String encode() {
        StringBuffer stringBuffer = new StringBuffer();
        encode(stringBuffer);
        return stringBuffer.toString();
    }

    public final void setGlobal(boolean z) {
        this.isglobal = z;
    }

    public final void setParameters(NameValueList nameValueList) {
        this.parameters = nameValueList;
    }

    public final void setPhoneNumber(String str) {
        this.phoneNumber = str;
    }

    @Override // gov.nist.core.GenericObject
    public final StringBuffer encode(StringBuffer stringBuffer) {
        if (this.isglobal) {
            stringBuffer.append('+');
        }
        stringBuffer.append(this.phoneNumber);
        if (!this.parameters.isEmpty()) {
            stringBuffer.append(";");
            this.parameters.encode(stringBuffer);
        }
        return stringBuffer;
    }
}
