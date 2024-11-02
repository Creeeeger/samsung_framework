package gov.nist.javax.sip.header;

import gov.nist.core.NameValue;
import javax.sip.InvalidArgumentException;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class AcceptLanguage extends ParametersHeader {
    private static final long serialVersionUID = -4473982069737324919L;
    protected String languageRange;

    public AcceptLanguage() {
        super("Accept-Language");
    }

    @Override // gov.nist.javax.sip.header.SIPHeader
    public final String encodeBody() {
        StringBuffer stringBuffer = new StringBuffer();
        String str = this.languageRange;
        if (str != null) {
            stringBuffer.append(str);
        }
        if (!this.parameters.isEmpty()) {
            stringBuffer.append(";");
            stringBuffer.append(this.parameters.encode());
        }
        return stringBuffer.toString();
    }

    public final void setLanguageRange(String str) {
        this.languageRange = str.trim();
    }

    public final void setQValue(float f) {
        double d = f;
        if (d >= 0.0d && d <= 1.0d) {
            if (f == -1.0f) {
                this.parameters.delete("q");
                return;
            } else {
                this.parameters.set(new NameValue("q", Float.valueOf(f)));
                return;
            }
        }
        throw new InvalidArgumentException("qvalue out of range!");
    }
}
