package com.android.systemui.util;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class SettingsHelper$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SettingsHelper f$0;

    public /* synthetic */ SettingsHelper$$ExternalSyntheticLambda0(SettingsHelper settingsHelper, int i) {
        this.$r8$classId = i;
        this.f$0 = settingsHelper;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                SettingsHelper settingsHelper = this.f$0;
                settingsHelper.readSettingsDB();
                settingsHelper.registerSettingsObserver();
                return;
            default:
                this.f$0.registerSettingsObserver();
                return;
        }
    }
}
