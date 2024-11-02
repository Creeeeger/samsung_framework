package com.android.systemui.screenshot;

import androidx.lifecycle.LifecycleOwnerKt;
import com.android.keyguard.KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;
import com.android.systemui.screenshot.IScreenshotProxy;
import kotlinx.coroutines.BuildersKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ScreenshotProxyService$mBinder$1 extends IScreenshotProxy.Stub {
    public final /* synthetic */ ScreenshotProxyService this$0;

    public ScreenshotProxyService$mBinder$1(ScreenshotProxyService screenshotProxyService) {
        this.this$0 = screenshotProxyService;
    }

    @Override // com.android.systemui.screenshot.IScreenshotProxy
    public final void dismissKeyguard(IOnDoneCallback iOnDoneCallback) {
        BuildersKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this.this$0), null, null, new ScreenshotProxyService$mBinder$1$dismissKeyguard$1(this.this$0, iOnDoneCallback, null), 3);
    }

    @Override // com.android.systemui.screenshot.IScreenshotProxy
    public final boolean isNotificationShadeExpanded() {
        boolean z;
        if (this.this$0.mExpansionMgr.state == 0) {
            z = true;
        } else {
            z = false;
        }
        boolean z2 = !z;
        KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("isNotificationShadeExpanded(): ", z2, "ScreenshotProxyService");
        return z2;
    }
}
