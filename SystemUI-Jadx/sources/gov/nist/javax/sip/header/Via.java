package gov.nist.javax.sip.header;

import gov.nist.core.Host;
import gov.nist.core.HostPort;
import javax.sip.header.ViaHeader;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class Via extends ParametersHeader implements ViaHeader {
    private static final long serialVersionUID = 5281728373401351378L;
    protected String comment;
    private boolean rPortFlag;
    protected HostPort sentBy;
    protected Protocol sentProtocol;

    public Via() {
        super("Via");
        this.rPortFlag = false;
        this.sentProtocol = new Protocol();
    }

    @Override // gov.nist.javax.sip.header.ParametersHeader, gov.nist.core.GenericObject
    public final Object clone() {
        int i;
        Via via = (Via) super.clone();
        Protocol protocol = this.sentProtocol;
        if (protocol != null) {
            via.sentProtocol = (Protocol) protocol.clone();
        }
        HostPort hostPort = this.sentBy;
        if (hostPort != null) {
            via.sentBy = (HostPort) hostPort.clone();
        }
        String parameter = getParameter("rport");
        int i2 = -1;
        if (parameter != null && !parameter.equals("")) {
            i = Integer.valueOf(parameter).intValue();
        } else {
            i = -1;
        }
        if (i != -1) {
            String parameter2 = getParameter("rport");
            if (parameter2 != null && !parameter2.equals("")) {
                i2 = Integer.valueOf(parameter2).intValue();
            }
            via.parameters.set(Integer.valueOf(i2), "rport");
        }
        return via;
    }

    @Override // gov.nist.javax.sip.header.SIPHeader
    public final String encodeBody() {
        StringBuffer stringBuffer = new StringBuffer();
        encodeBody(stringBuffer);
        return stringBuffer.toString();
    }

    @Override // gov.nist.javax.sip.header.SIPObject, gov.nist.core.GenericObject
    public final boolean equals(Object obj) {
        String str;
        String str2;
        Host host;
        String hostname;
        int port;
        Host host2;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ViaHeader)) {
            return false;
        }
        Via via = (Via) ((ViaHeader) obj);
        if (getProtocol().equalsIgnoreCase(via.getProtocol())) {
            Protocol protocol = this.sentProtocol;
            String str3 = null;
            if (protocol == null) {
                str = null;
            } else {
                str = protocol.transport;
            }
            Protocol protocol2 = via.sentProtocol;
            if (protocol2 == null) {
                str2 = null;
            } else {
                str2 = protocol2.transport;
            }
            if (str.equalsIgnoreCase(str2)) {
                HostPort hostPort = this.sentBy;
                if (hostPort == null || (host = hostPort.getHost()) == null) {
                    hostname = null;
                } else {
                    hostname = host.getHostname();
                }
                HostPort hostPort2 = via.sentBy;
                if (hostPort2 != null && (host2 = hostPort2.getHost()) != null) {
                    str3 = host2.getHostname();
                }
                if (hostname.equalsIgnoreCase(str3)) {
                    HostPort hostPort3 = this.sentBy;
                    int i = -1;
                    if (hostPort3 == null) {
                        port = -1;
                    } else {
                        port = hostPort3.getPort();
                    }
                    HostPort hostPort4 = via.sentBy;
                    if (hostPort4 != null) {
                        i = hostPort4.getPort();
                    }
                    if (port == i && equalParameters(via)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final String getProtocol() {
        Protocol protocol = this.sentProtocol;
        if (protocol == null) {
            return null;
        }
        return protocol.protocolName + '/' + protocol.protocolVersion;
    }

    public final void setComment(String str) {
        this.comment = str;
    }

    public final void setSentBy(HostPort hostPort) {
        this.sentBy = hostPort;
    }

    public final void setSentProtocol(Protocol protocol) {
        this.sentProtocol = protocol;
    }

    @Override // gov.nist.javax.sip.header.SIPHeader
    public final void encodeBody(StringBuffer stringBuffer) {
        this.sentProtocol.encode(stringBuffer);
        stringBuffer.append(" ");
        this.sentBy.encode(stringBuffer);
        if (!this.parameters.isEmpty()) {
            stringBuffer.append(";");
            this.parameters.encode(stringBuffer);
        }
        if (this.comment != null) {
            stringBuffer.append(" ");
            stringBuffer.append("(");
            stringBuffer.append(this.comment);
            stringBuffer.append(")");
        }
        if (this.rPortFlag) {
            stringBuffer.append(";rport");
        }
    }
}
