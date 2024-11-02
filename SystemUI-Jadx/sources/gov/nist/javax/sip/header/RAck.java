package gov.nist.javax.sip.header;

import androidx.core.animation.ValueAnimator$$ExternalSyntheticOutline0;
import javax.sip.InvalidArgumentException;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class RAck extends SIPHeader {
    private static final long serialVersionUID = 743999286077404118L;
    protected long cSeqNumber;
    protected String method;
    protected long rSeqNumber;

    public RAck() {
        super("RAck");
    }

    @Override // gov.nist.javax.sip.header.SIPHeader
    public final String encodeBody() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.rSeqNumber);
        stringBuffer.append(" ");
        stringBuffer.append(this.cSeqNumber);
        stringBuffer.append(" ");
        stringBuffer.append(this.method);
        return stringBuffer.toString();
    }

    public final void setCSequenceNumber(long j) {
        if (j > 0 && j <= 2147483648L) {
            this.cSeqNumber = j;
            return;
        }
        throw new InvalidArgumentException(ValueAnimator$$ExternalSyntheticOutline0.m("Bad CSeq # ", j));
    }

    public final void setMethod(String str) {
        this.method = str;
    }

    public final void setRSequenceNumber(long j) {
        if (j > 0 && this.cSeqNumber <= 2147483648L) {
            this.rSeqNumber = j;
            return;
        }
        throw new InvalidArgumentException(ValueAnimator$$ExternalSyntheticOutline0.m("Bad rSeq # ", j));
    }
}
