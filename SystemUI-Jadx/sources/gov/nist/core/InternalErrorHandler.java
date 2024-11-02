package gov.nist.core;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class InternalErrorHandler {
    public static void handleException(Exception exc) {
        System.err.println("Unexpected internal error FIXME!! " + exc.getMessage());
        exc.printStackTrace();
        throw new RuntimeException("Unexpected internal error FIXME!! " + exc.getMessage(), exc);
    }
}
