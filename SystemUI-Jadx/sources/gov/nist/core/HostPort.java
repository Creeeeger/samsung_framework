package gov.nist.core;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class HostPort extends GenericObject {
    private static final long serialVersionUID = -7103412227431884523L;
    protected Host host = null;
    protected int port = -1;

    @Override // gov.nist.core.GenericObject
    public final Object clone() {
        HostPort hostPort = (HostPort) super.clone();
        Host host = this.host;
        if (host != null) {
            hostPort.host = (Host) host.clone();
        }
        return hostPort;
    }

    @Override // gov.nist.core.GenericObject
    public final String encode() {
        StringBuffer stringBuffer = new StringBuffer();
        encode(stringBuffer);
        return stringBuffer.toString();
    }

    @Override // gov.nist.core.GenericObject
    public final boolean equals(Object obj) {
        if (obj == null || HostPort.class != obj.getClass()) {
            return false;
        }
        HostPort hostPort = (HostPort) obj;
        if (this.port != hostPort.port || !this.host.equals(hostPort.host)) {
            return false;
        }
        return true;
    }

    public final Host getHost() {
        return this.host;
    }

    public final int getPort() {
        return this.port;
    }

    public final int hashCode() {
        return this.host.hashCode() + this.port;
    }

    public final String toString() {
        return encode();
    }

    @Override // gov.nist.core.GenericObject
    public final StringBuffer encode(StringBuffer stringBuffer) {
        this.host.encode(stringBuffer);
        if (this.port != -1) {
            stringBuffer.append(":");
            stringBuffer.append(this.port);
        }
        return stringBuffer;
    }
}
