package gov.nist.javax.sip.header;

import com.samsung.android.knox.container.EnterpriseContainerConstants;
import gov.nist.core.NameValue;
import java.text.ParseException;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class AuthenticationInfo extends ParametersHeader {
    private static final long serialVersionUID = -4371927900917127057L;

    public AuthenticationInfo() {
        super("Authentication-Info");
        this.parameters.setSeparator(",");
    }

    @Override // gov.nist.javax.sip.header.SIPHeader
    public final String encodeBody() {
        return this.parameters.encode();
    }

    @Override // gov.nist.javax.sip.header.ParametersHeader
    public final void setParameter(String str, String str2) {
        if (str != null) {
            NameValue nameValue = this.parameters.getNameValue(str.toLowerCase());
            if (nameValue == null) {
                NameValue nameValue2 = new NameValue(str, str2);
                if (str.equalsIgnoreCase("qop") || str.equalsIgnoreCase("nextnonce") || str.equalsIgnoreCase("realm") || str.equalsIgnoreCase("cnonce") || str.equalsIgnoreCase("nonce") || str.equalsIgnoreCase("opaque") || str.equalsIgnoreCase(EnterpriseContainerConstants.EMAIL_USERNAME) || str.equalsIgnoreCase("domain") || str.equalsIgnoreCase("nextnonce") || str.equalsIgnoreCase("rspauth")) {
                    if (str2 != null) {
                        if (!str2.startsWith("\"")) {
                            nameValue2.setQuotedValue();
                        } else {
                            throw new ParseException(str2.concat(" : Unexpected DOUBLE_QUOTE"), 0);
                        }
                    } else {
                        throw new NullPointerException("null value");
                    }
                }
                this.parameters.set(nameValue2);
                return;
            }
            nameValue.setValueAsObject(str2);
            return;
        }
        throw new NullPointerException("null name");
    }
}
