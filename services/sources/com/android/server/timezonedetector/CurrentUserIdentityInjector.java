package com.android.server.timezonedetector;

/* loaded from: classes3.dex */
public interface CurrentUserIdentityInjector {
    public static final CurrentUserIdentityInjector REAL = new Real();

    /* loaded from: classes3.dex */
    public class Real implements CurrentUserIdentityInjector {
    }
}
