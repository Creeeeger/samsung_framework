package gov.nist.javax.sip.header;

import androidx.core.animation.ValueAnimator$$ExternalSyntheticOutline0;
import javax.sip.InvalidArgumentException;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class RSeq extends SIPHeader {
    private static final long serialVersionUID = 8765762413224043394L;
    protected long sequenceNumber;

    public RSeq() {
        super("RSeq");
    }

    @Override // gov.nist.javax.sip.header.SIPHeader
    public final String encodeBody() {
        return Long.toString(this.sequenceNumber);
    }

    public final void setSeqNumber(long j) {
        if (j > 0 && j <= 2147483648L) {
            this.sequenceNumber = j;
            return;
        }
        throw new InvalidArgumentException(ValueAnimator$$ExternalSyntheticOutline0.m("Bad seq number ", j));
    }
}
