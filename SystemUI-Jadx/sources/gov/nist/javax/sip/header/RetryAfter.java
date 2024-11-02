package gov.nist.javax.sip.header;

import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import javax.sip.InvalidArgumentException;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class RetryAfter extends ParametersHeader {
    private static final long serialVersionUID = -1029458515616146140L;
    protected String comment;
    protected Integer retryAfter;

    public RetryAfter() {
        super("Retry-After");
        this.retryAfter = new Integer(0);
    }

    @Override // gov.nist.javax.sip.header.SIPHeader
    public final String encodeBody() {
        StringBuffer stringBuffer = new StringBuffer();
        Integer num = this.retryAfter;
        if (num != null) {
            stringBuffer.append(num);
        }
        if (this.comment != null) {
            stringBuffer.append(" (" + this.comment + ")");
        }
        if (!this.parameters.isEmpty()) {
            stringBuffer.append(";" + this.parameters.encode());
        }
        return stringBuffer.toString();
    }

    public final void setComment(String str) {
        if (str != null) {
            this.comment = str;
            return;
        }
        throw new NullPointerException("the comment parameter is null");
    }

    public final void setDuration(int i) {
        if (i >= 0) {
            this.parameters.set(Integer.valueOf(i), "duration");
            return;
        }
        throw new InvalidArgumentException("the duration parameter is <0");
    }

    public final void setRetryAfter(int i) {
        if (i >= 0) {
            this.retryAfter = Integer.valueOf(i);
            return;
        }
        throw new InvalidArgumentException(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("invalid parameter ", i));
    }
}
