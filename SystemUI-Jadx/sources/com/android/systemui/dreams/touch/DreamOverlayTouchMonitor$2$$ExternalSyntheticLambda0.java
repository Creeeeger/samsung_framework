package com.android.systemui.dreams.touch;

import com.android.systemui.dreams.touch.DreamTouchHandler;
import java.util.function.BiConsumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class DreamOverlayTouchMonitor$2$$ExternalSyntheticLambda0 implements BiConsumer {
    @Override // java.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        ((DreamTouchHandler) obj).onSessionStart((DreamTouchHandler.TouchSession) obj2);
    }
}
