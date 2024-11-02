package com.android.systemui.dreams.touch.scrim;

import com.android.systemui.dreams.DreamOverlayContainerViewController;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class BouncerlessScrimController$$ExternalSyntheticLambda3 implements Consumer {
    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        DreamOverlayContainerViewController.this.mWakingUpFromSwipe = true;
    }
}
