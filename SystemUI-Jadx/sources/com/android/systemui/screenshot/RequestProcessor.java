package com.android.systemui.screenshot;

import android.app.admin.DevicePolicyManager;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.screenshot.sep.SemImageCaptureImpl;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class RequestProcessor {
    public final String TAG = "Screenshot";
    public final DevicePolicyManager devicePolicyManager;
    public final CoroutineScope mainScope;
    public final ScreenshotPolicy policy;
    public final SemImageCaptureImpl semCapture;

    public RequestProcessor(DevicePolicyManager devicePolicyManager, SemImageCaptureImpl semImageCaptureImpl, ImageCapture imageCapture, ScreenshotPolicy screenshotPolicy, FeatureFlags featureFlags, CoroutineScope coroutineScope) {
        this.devicePolicyManager = devicePolicyManager;
        this.semCapture = semImageCaptureImpl;
        this.policy = screenshotPolicy;
        this.mainScope = coroutineScope;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x012b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00b2 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object process(com.android.systemui.screenshot.ScreenshotData r10, kotlin.coroutines.Continuation r11) {
        /*
            Method dump skipped, instructions count: 321
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.screenshot.RequestProcessor.process(com.android.systemui.screenshot.ScreenshotData, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
