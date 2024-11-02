package gov.nist.javax.sip.header;

import com.samsung.android.knox.net.vpn.KnoxVpnPolicyConstants;
import gov.nist.javax.sip.Utils;
import java.util.Locale;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class Protocol extends SIPObject {
    private static final long serialVersionUID = 2216758055974073280L;
    protected String protocolName = "SIP";
    protected String protocolVersion = KnoxVpnPolicyConstants.NEW_FW;
    protected String transport = "UDP";

    @Override // gov.nist.core.GenericObject
    public final String encode() {
        StringBuffer stringBuffer = new StringBuffer();
        encode(stringBuffer);
        return stringBuffer.toString();
    }

    public final void setProtocolName(String str) {
        this.protocolName = str;
    }

    public final void setProtocolVersion(String str) {
        this.protocolVersion = str;
    }

    public final void setTransport(String str) {
        this.transport = str;
    }

    @Override // gov.nist.javax.sip.header.SIPObject, gov.nist.core.GenericObject
    public final StringBuffer encode(StringBuffer stringBuffer) {
        String str = this.protocolName;
        char[] cArr = Utils.toHex;
        stringBuffer.append(str.toUpperCase(Locale.ENGLISH));
        stringBuffer.append("/");
        stringBuffer.append(this.protocolVersion);
        stringBuffer.append("/");
        stringBuffer.append(this.transport.toUpperCase());
        return stringBuffer;
    }
}
