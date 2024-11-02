package com.android.systemui.media.dialog;

import com.android.settingslib.media.MediaDevice;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class MediaOutputController$$ExternalSyntheticLambda4 implements Runnable {
    public final /* synthetic */ MediaDevice f$0;
    public final /* synthetic */ int f$1;

    public /* synthetic */ MediaOutputController$$ExternalSyntheticLambda4(MediaDevice mediaDevice, int i) {
        this.f$0 = mediaDevice;
        this.f$1 = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f$0.requestSetVolume(this.f$1);
    }
}
