package javax.sip;

import java.util.HashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class SipFactory {
    public static SipFactory sSipFactory;

    private SipFactory() {
        new HashMap();
    }

    public static synchronized SipFactory getInstance() {
        SipFactory sipFactory;
        synchronized (SipFactory.class) {
            if (sSipFactory == null) {
                sSipFactory = new SipFactory();
            }
            sipFactory = sSipFactory;
        }
        return sipFactory;
    }
}
