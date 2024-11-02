package com.android.wm.shell.bubbles;

import android.content.Context;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SecHideInformationMirroringController {
    public final HideInformationMirroringCallback mCallback;
    public final Context mContext;
    public final SecHideInformationMirroringModel mModel = new SecHideInformationMirroringModel();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface HideInformationMirroringCallback {
    }

    public SecHideInformationMirroringController(Context context, HideInformationMirroringCallback hideInformationMirroringCallback) {
        this.mContext = context;
        this.mCallback = hideInformationMirroringCallback;
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x001b, code lost:
    
        if (r1 != false) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateMirroringWindowFlag() {
        /*
            r3 = this;
            com.android.wm.shell.bubbles.SecHideInformationMirroringModel r0 = r3.mModel
            r0.getClass()
            r0 = 0
            android.content.Context r1 = r3.mContext
            if (r1 == 0) goto L1e
            android.content.ContentResolver r1 = r1.getContentResolver()
            java.lang.String r2 = "smart_view_show_notification_on"
            int r1 = android.provider.Settings.Global.getInt(r1, r2, r0)
            r2 = 1
            if (r1 != 0) goto L1a
            r1 = r2
            goto L1b
        L1a:
            r1 = r0
        L1b:
            if (r1 == 0) goto L1e
            goto L1f
        L1e:
            r2 = r0
        L1f:
            com.android.wm.shell.bubbles.SecHideInformationMirroringController$HideInformationMirroringCallback r3 = r3.mCallback
            com.android.wm.shell.bubbles.BubbleController$$ExternalSyntheticLambda5 r3 = (com.android.wm.shell.bubbles.BubbleController$$ExternalSyntheticLambda5) r3
            com.android.wm.shell.bubbles.BubbleController r3 = r3.f$0
            r3.getClass()
            com.android.wm.shell.bubbles.BubbleController$$ExternalSyntheticLambda19 r1 = new com.android.wm.shell.bubbles.BubbleController$$ExternalSyntheticLambda19
            r1.<init>(r0, r3, r2)
            android.os.Handler r3 = r3.mMainHandler
            r3.post(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.bubbles.SecHideInformationMirroringController.updateMirroringWindowFlag():void");
    }
}
