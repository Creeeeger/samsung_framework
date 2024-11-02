package gov.nist.javax.sip.header;

import javax.sip.InvalidArgumentException;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class SubscriptionState extends ParametersHeader {
    private static final long serialVersionUID = -6673833053927258745L;
    protected int expires;
    protected String reasonCode;
    protected int retryAfter;
    protected String state;

    public SubscriptionState() {
        super("Subscription-State");
        this.expires = -1;
        this.retryAfter = -1;
    }

    @Override // gov.nist.javax.sip.header.SIPHeader
    public final String encodeBody() {
        StringBuffer stringBuffer = new StringBuffer();
        encodeBody(stringBuffer);
        return stringBuffer.toString();
    }

    public final void setExpires(int i) {
        if (i >= 0) {
            this.expires = i;
            return;
        }
        throw new InvalidArgumentException("JAIN-SIP Exception, SubscriptionState, setExpires(), the expires parameter is  < 0");
    }

    public final void setReasonCode(String str) {
        if (str != null) {
            this.reasonCode = str;
            return;
        }
        throw new NullPointerException("JAIN-SIP Exception, SubscriptionState, setReasonCode(), the reasonCode parameter is null");
    }

    public final void setRetryAfter(int i) {
        if (i > 0) {
            this.retryAfter = i;
            return;
        }
        throw new InvalidArgumentException("JAIN-SIP Exception, SubscriptionState, setRetryAfter(), the retryAfter parameter is <=0");
    }

    public final void setState(String str) {
        if (str != null) {
            this.state = str;
            return;
        }
        throw new NullPointerException("JAIN-SIP Exception, SubscriptionState, setState(), the state parameter is null");
    }

    @Override // gov.nist.javax.sip.header.SIPHeader
    public final void encodeBody(StringBuffer stringBuffer) {
        String str = this.state;
        if (str != null) {
            stringBuffer.append(str);
        }
        if (this.reasonCode != null) {
            stringBuffer.append(";reason=");
            stringBuffer.append(this.reasonCode);
        }
        if (this.expires != -1) {
            stringBuffer.append(";expires=");
            stringBuffer.append(this.expires);
        }
        if (this.retryAfter != -1) {
            stringBuffer.append(";retry-after=");
            stringBuffer.append(this.retryAfter);
        }
        if (this.parameters.isEmpty()) {
            return;
        }
        stringBuffer.append(";");
        this.parameters.encode(stringBuffer);
    }
}
