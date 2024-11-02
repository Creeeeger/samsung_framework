package com.android.systemui.media;

import com.android.systemui.media.SecSeekBarViewModel;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SecSeekBarViewModel$clearController$1 implements Runnable {
    public final /* synthetic */ SecSeekBarViewModel this$0;

    public SecSeekBarViewModel$clearController$1(SecSeekBarViewModel secSeekBarViewModel) {
        this.this$0 = secSeekBarViewModel;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.this$0.setController(null);
        SecSeekBarViewModel secSeekBarViewModel = this.this$0;
        secSeekBarViewModel.playbackState = null;
        Runnable runnable = secSeekBarViewModel.cancel;
        if (runnable != null) {
            runnable.run();
        }
        SecSeekBarViewModel secSeekBarViewModel2 = this.this$0;
        secSeekBarViewModel2.cancel = null;
        secSeekBarViewModel2.set_data(SecSeekBarViewModel.Progress.copy$default(secSeekBarViewModel2._data, false, null, 62));
    }
}
