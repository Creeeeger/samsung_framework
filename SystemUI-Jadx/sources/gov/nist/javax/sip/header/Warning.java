package gov.nist.javax.sip.header;

import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import java.text.ParseException;
import javax.sip.InvalidArgumentException;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class Warning extends SIPHeader {
    private static final long serialVersionUID = -3433328864230783899L;
    protected String agent;
    protected int code;
    protected String text;

    public Warning() {
        super("Warning");
    }

    @Override // gov.nist.javax.sip.header.SIPHeader
    public final String encodeBody() {
        if (this.text != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(Integer.toString(this.code));
            sb.append(" ");
            sb.append(this.agent);
            sb.append(" \"");
            return AbstractResolvableFuture$$ExternalSyntheticOutline0.m(sb, this.text, "\"");
        }
        return Integer.toString(this.code) + " " + this.agent;
    }

    public final void setAgent(String str) {
        if (str != null) {
            this.agent = str;
            return;
        }
        throw new NullPointerException("the host parameter in the Warning header is null");
    }

    public final void setCode(int i) {
        if (i > 99 && i < 1000) {
            this.code = i;
            return;
        }
        throw new InvalidArgumentException(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("Code parameter in the Warning header is invalid: code=", i));
    }

    public final void setText(String str) {
        if (str != null) {
            this.text = str;
            return;
        }
        throw new ParseException("The text parameter in the Warning header is null", 0);
    }
}
