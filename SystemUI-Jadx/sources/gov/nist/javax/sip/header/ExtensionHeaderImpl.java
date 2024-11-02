package gov.nist.javax.sip.header;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class ExtensionHeaderImpl extends SIPHeader {
    private static final long serialVersionUID = -8693922839612081849L;
    protected String value;

    public ExtensionHeaderImpl() {
    }

    @Override // gov.nist.javax.sip.header.SIPHeader, gov.nist.core.GenericObject
    public final String encode() {
        StringBuffer stringBuffer = new StringBuffer(this.headerName);
        stringBuffer.append(": ");
        stringBuffer.append(this.value);
        stringBuffer.append("\r\n");
        return stringBuffer.toString();
    }

    @Override // gov.nist.javax.sip.header.SIPHeader
    public final String encodeBody() {
        String str = this.value;
        if (str == null) {
            try {
                StringBuffer stringBuffer = new StringBuffer(encode());
                while (stringBuffer.length() > 0 && stringBuffer.charAt(0) != ':') {
                    stringBuffer.deleteCharAt(0);
                }
                stringBuffer.deleteCharAt(0);
                String trim = stringBuffer.toString().trim();
                this.value = trim;
                return trim;
            } catch (Exception unused) {
                return null;
            }
        }
        return str;
    }

    public final void setValue(String str) {
        this.value = str;
    }

    public ExtensionHeaderImpl(String str) {
        super(str);
    }
}
