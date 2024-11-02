package com.android.systemui.media;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SecSeekBarViewModel$listening$1 implements Runnable {
    public final /* synthetic */ boolean $value;
    public final /* synthetic */ SecSeekBarViewModel this$0;

    public SecSeekBarViewModel$listening$1(SecSeekBarViewModel secSeekBarViewModel, boolean z) {
        this.this$0 = secSeekBarViewModel;
        this.$value = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        SecSeekBarViewModel secSeekBarViewModel = this.this$0;
        boolean z = secSeekBarViewModel.listening;
        boolean z2 = this.$value;
        if (z != z2) {
            secSeekBarViewModel.listening = z2;
            secSeekBarViewModel.checkIfPollingNeeded();
        }
    }
}
