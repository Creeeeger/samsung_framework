package com.samsung.android.biometrics.app.setting.fingerprint;

import android.util.Singleton;

/* loaded from: classes.dex */
public final class HbmInitState extends HbmState {
    private static final Singleton<HbmInitState> sInstance = new AnonymousClass1();

    /* renamed from: com.samsung.android.biometrics.app.setting.fingerprint.HbmInitState$1, reason: invalid class name */
    final class AnonymousClass1 extends Singleton<HbmInitState> {
        protected final Object create() {
            return new HbmInitState(0);
        }
    }

    /* synthetic */ HbmInitState(int i) {
        this();
    }

    public static HbmInitState get() {
        return (HbmInitState) sInstance.get();
    }

    @Override // com.samsung.android.biometrics.app.setting.fingerprint.HbmState
    public final String getTag() {
        return "InitState";
    }

    private HbmInitState() {
    }

    @Override // com.samsung.android.biometrics.app.setting.fingerprint.HbmState
    public final void turnOffHbm() {
    }

    @Override // com.samsung.android.biometrics.app.setting.fingerprint.HbmState
    public final void turnOnHbm() {
    }

    @Override // com.samsung.android.biometrics.app.setting.fingerprint.HbmState
    public final void handleDisplayStateChanged(int i) {
    }
}
