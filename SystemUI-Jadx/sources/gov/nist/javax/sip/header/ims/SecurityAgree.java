package gov.nist.javax.sip.header.ims;

import gov.nist.core.NameValue;
import gov.nist.javax.sip.header.ParametersHeader;
import java.text.ParseException;
import javax.sip.header.Parameters;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public abstract class SecurityAgree extends ParametersHeader {
    private String secMechanism;

    public SecurityAgree(String str) {
        super(str);
        this.parameters.setSeparator(";");
    }

    @Override // gov.nist.javax.sip.header.ParametersHeader, gov.nist.core.GenericObject
    public final Object clone() {
        SecurityAgree securityAgree = (SecurityAgree) super.clone();
        String str = this.secMechanism;
        if (str != null) {
            securityAgree.secMechanism = str;
        }
        return securityAgree;
    }

    @Override // gov.nist.javax.sip.header.SIPHeader
    public final String encodeBody() {
        return this.secMechanism + "; " + this.parameters.encode();
    }

    @Override // gov.nist.javax.sip.header.SIPObject, gov.nist.core.GenericObject
    public final boolean equals(Object obj) {
        if (!(obj instanceof SecurityAgreeHeader)) {
            return false;
        }
        Parameters parameters = (SecurityAgreeHeader) obj;
        if (!this.secMechanism.equals(((SecurityAgree) parameters).secMechanism) || !equalParameters(parameters)) {
            return false;
        }
        return true;
    }

    @Override // gov.nist.javax.sip.header.ParametersHeader
    public final void setParameter(String str, String str2) {
        if (str2 != null) {
            NameValue nameValue = this.parameters.getNameValue(str.toLowerCase());
            if (nameValue == null) {
                NameValue nameValue2 = new NameValue(str, str2);
                if (str.equalsIgnoreCase("d-ver")) {
                    nameValue2.setQuotedValue();
                    if (str2.startsWith("\"")) {
                        throw new ParseException(str2.concat(" : Unexpected DOUBLE_QUOTE"), 0);
                    }
                }
                setParameter(nameValue2);
                return;
            }
            nameValue.setValueAsObject(str2);
            return;
        }
        throw new NullPointerException("null value");
    }

    public final void setSecurityMechanism(String str) {
        if (str != null) {
            this.secMechanism = str;
            return;
        }
        throw new NullPointerException("JAIN-SIP Exception, SecurityAgree, setSecurityMechanism(), the sec-mechanism parameter is null");
    }

    public SecurityAgree() {
        this.parameters.setSeparator(";");
    }
}
