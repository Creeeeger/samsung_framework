package gov.nist.javax.sip.address;

import androidx.constraintlayout.motion.widget.KeyAttributes$$ExternalSyntheticOutline0;
import gov.nist.core.GenericObject;
import gov.nist.core.Host;
import gov.nist.core.HostPort;
import gov.nist.core.NameValue;
import gov.nist.core.NameValueList;
import java.text.ParseException;
import java.util.Iterator;
import javax.sip.address.SipURI;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class SipUri extends GenericURI implements SipURI {
    private static final long serialVersionUID = 7749781076218987044L;
    protected Authority authority;
    protected NameValueList qheaders;
    protected TelephoneNumber telephoneSubscriber;
    protected NameValueList uriParms;

    public SipUri() {
        this.scheme = "sip";
        this.uriParms = new NameValueList();
        NameValueList nameValueList = new NameValueList();
        this.qheaders = nameValueList;
        nameValueList.setSeparator("&");
    }

    @Override // gov.nist.core.GenericObject
    public final Object clone() {
        SipUri sipUri = (SipUri) super.clone();
        Authority authority = this.authority;
        if (authority != null) {
            sipUri.authority = (Authority) authority.clone();
        }
        NameValueList nameValueList = this.uriParms;
        if (nameValueList != null) {
            sipUri.uriParms = (NameValueList) nameValueList.clone();
        }
        NameValueList nameValueList2 = this.qheaders;
        if (nameValueList2 != null) {
            sipUri.qheaders = (NameValueList) nameValueList2.clone();
        }
        TelephoneNumber telephoneNumber = this.telephoneSubscriber;
        if (telephoneNumber != null) {
            sipUri.telephoneSubscriber = (TelephoneNumber) telephoneNumber.clone();
        }
        return sipUri;
    }

    @Override // gov.nist.javax.sip.address.GenericURI, gov.nist.core.GenericObject
    public final String encode() {
        StringBuffer stringBuffer = new StringBuffer();
        encode(stringBuffer);
        return stringBuffer.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:224:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00f2 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00f3  */
    @Override // gov.nist.javax.sip.address.GenericURI, gov.nist.javax.sip.address.NetObject, gov.nist.core.GenericObject
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean equals(java.lang.Object r8) {
        /*
            Method dump skipped, instructions count: 664
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: gov.nist.javax.sip.address.SipUri.equals(java.lang.Object):boolean");
    }

    public final Iterator getHeaderNames() {
        return this.qheaders.getNames();
    }

    public final String getHost() {
        Host host;
        Authority authority = this.authority;
        Host host2 = null;
        if (authority == null) {
            return null;
        }
        HostPort hostPort = authority.hostPort;
        if (hostPort == null) {
            host = null;
        } else {
            host = hostPort.getHost();
        }
        if (host == null) {
            return null;
        }
        HostPort hostPort2 = this.authority.hostPort;
        if (hostPort2 != null) {
            host2 = hostPort2.getHost();
        }
        return host2.encode();
    }

    @Override // javax.sip.header.Parameters
    public final String getParameter(String str) {
        Object value = this.uriParms.getValue(str);
        if (value == null) {
            return null;
        }
        if (value instanceof GenericObject) {
            return ((GenericObject) value).encode();
        }
        return value.toString();
    }

    @Override // javax.sip.header.Parameters
    public final Iterator getParameterNames() {
        return this.uriParms.getNames();
    }

    public final int getPort() {
        Host host;
        Authority authority = this.authority;
        HostPort hostPort = null;
        if (authority != null) {
            HostPort hostPort2 = authority.hostPort;
            if (hostPort2 == null) {
                host = null;
            } else {
                host = hostPort2.getHost();
            }
            if (host != null) {
                hostPort = this.authority.hostPort;
            }
        }
        if (hostPort == null) {
            return -1;
        }
        return hostPort.getPort();
    }

    @Override // gov.nist.javax.sip.address.GenericURI
    public final String getScheme() {
        return this.scheme;
    }

    public final String getUser() {
        UserInfo userInfo = this.authority.userInfo;
        if (userInfo != null) {
            return userInfo.user;
        }
        return null;
    }

    public final String getUserPassword() {
        UserInfo userInfo;
        Authority authority = this.authority;
        if (authority == null || (userInfo = authority.userInfo) == null) {
            return null;
        }
        return userInfo.password;
    }

    public final void removeHeaders() {
        this.qheaders = new NameValueList();
    }

    public final void removeParameter(String str) {
        this.uriParms.delete(str);
    }

    public final void removeParameters() {
        this.uriParms = new NameValueList();
    }

    public final void setHostPort(HostPort hostPort) {
        if (this.authority == null) {
            this.authority = new Authority();
        }
        this.authority.hostPort = hostPort;
    }

    public final void setParameter(String str, String str2) {
        if (str.equalsIgnoreCase("ttl")) {
            try {
                Integer.parseInt(str2);
            } catch (NumberFormatException unused) {
                throw new ParseException(KeyAttributes$$ExternalSyntheticOutline0.m("bad parameter ", str2), 0);
            }
        }
        this.uriParms.set(str2, str);
    }

    public final void setQHeader(NameValue nameValue) {
        this.qheaders.set(nameValue);
    }

    public final void setScheme(String str) {
        if (str.compareToIgnoreCase("sip") != 0 && str.compareToIgnoreCase("sips") != 0) {
            throw new IllegalArgumentException("bad scheme ".concat(str));
        }
        this.scheme = str.toLowerCase();
    }

    public final void setUriParameter(NameValue nameValue) {
        this.uriParms.set(nameValue);
    }

    public final void setUser(String str) {
        if (this.authority == null) {
            this.authority = new Authority();
        }
        Authority authority = this.authority;
        if (authority.userInfo == null) {
            authority.userInfo = new UserInfo();
        }
        UserInfo userInfo = authority.userInfo;
        userInfo.user = str;
        if (str != null && (str.indexOf("#") >= 0 || str.indexOf(";") >= 0)) {
            userInfo.userType = 1;
        } else {
            userInfo.userType = 2;
        }
    }

    public final void setUserParam(String str) {
        this.uriParms.set(str, "user");
    }

    public final void setUserPassword(String str) {
        if (this.authority == null) {
            this.authority = new Authority();
        }
        Authority authority = this.authority;
        if (authority.userInfo == null) {
            authority.userInfo = new UserInfo();
        }
        authority.userInfo.password = str;
    }

    @Override // gov.nist.javax.sip.address.GenericURI, gov.nist.javax.sip.address.NetObject, javax.sip.address.URI
    public final String toString() {
        return encode();
    }

    @Override // gov.nist.javax.sip.address.GenericURI, gov.nist.core.GenericObject
    public final StringBuffer encode(StringBuffer stringBuffer) {
        stringBuffer.append(this.scheme);
        stringBuffer.append(":");
        Authority authority = this.authority;
        if (authority != null) {
            authority.encode(stringBuffer);
        }
        if (!this.uriParms.isEmpty()) {
            stringBuffer.append(";");
            this.uriParms.encode(stringBuffer);
        }
        if (!this.qheaders.isEmpty()) {
            stringBuffer.append("?");
            this.qheaders.encode(stringBuffer);
        }
        return stringBuffer;
    }
}
