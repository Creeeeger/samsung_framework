package gov.nist.javax.sip.header;

import javax.sip.InvalidArgumentException;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class TimeStamp extends SIPHeader {
    private static final long serialVersionUID = -3711322366481232720L;
    protected int delay;
    protected float delayFloat;
    protected long timeStamp;
    private float timeStampFloat;

    public TimeStamp() {
        super("Timestamp");
        this.timeStamp = -1L;
        this.delayFloat = -1.0f;
        this.timeStampFloat = -1.0f;
        this.delay = -1;
    }

    @Override // gov.nist.javax.sip.header.SIPHeader
    public final String encodeBody() {
        String f;
        String f2;
        StringBuffer stringBuffer = new StringBuffer();
        long j = this.timeStamp;
        if (j == -1 && this.timeStampFloat == -1.0f) {
            f = "";
        } else if (j != -1) {
            f = Long.toString(j);
        } else {
            f = Float.toString(this.timeStampFloat);
        }
        int i = this.delay;
        if (i == -1 && this.delayFloat == -1.0f) {
            f2 = "";
        } else if (i != -1) {
            f2 = Integer.toString(i);
        } else {
            f2 = Float.toString(this.delayFloat);
        }
        if (f.equals("") && f2.equals("")) {
            return "";
        }
        if (!f.equals("")) {
            stringBuffer.append(f);
        }
        if (!f2.equals("")) {
            stringBuffer.append(" ");
            stringBuffer.append(f2);
        }
        return stringBuffer.toString();
    }

    public final void setDelay(float f) {
        if (f < 0.0f && f != -1.0f) {
            throw new InvalidArgumentException("JAIN-SIP Exception, TimeStamp, setDelay(), the delay parameter is <0");
        }
        this.delayFloat = f;
        this.delay = -1;
    }

    public final void setTime(long j) {
        if (j >= -1) {
            this.timeStamp = j;
            this.timeStampFloat = -1.0f;
            return;
        }
        throw new InvalidArgumentException("Illegal timestamp");
    }

    public final void setTimeStamp(float f) {
        if (f >= 0.0f) {
            this.timeStamp = -1L;
            this.timeStampFloat = f;
            return;
        }
        throw new InvalidArgumentException("JAIN-SIP Exception, TimeStamp, setTimeStamp(), the timeStamp parameter is <0");
    }
}
