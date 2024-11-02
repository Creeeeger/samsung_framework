package com.android.systemui.statusbar.phone;

import android.os.RemoteException;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class LetterboxBackgroundProvider$fetchBackgroundColorInfo$1 implements Runnable {
    public final /* synthetic */ LetterboxBackgroundProvider this$0;

    public LetterboxBackgroundProvider$fetchBackgroundColorInfo$1(LetterboxBackgroundProvider letterboxBackgroundProvider) {
        this.this$0 = letterboxBackgroundProvider;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            LetterboxBackgroundProvider letterboxBackgroundProvider = this.this$0;
            letterboxBackgroundProvider.isLetterboxBackgroundMultiColored = letterboxBackgroundProvider.windowManager.isLetterboxBackgroundMultiColored();
            LetterboxBackgroundProvider letterboxBackgroundProvider2 = this.this$0;
            letterboxBackgroundProvider2.letterboxBackgroundColor = letterboxBackgroundProvider2.windowManager.getLetterboxBackgroundColorInArgb();
        } catch (RemoteException e) {
            e.rethrowFromSystemServer();
        }
    }
}
