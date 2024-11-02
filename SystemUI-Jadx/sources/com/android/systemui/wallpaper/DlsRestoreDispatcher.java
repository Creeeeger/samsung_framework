package com.android.systemui.wallpaper;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.android.systemui.pluginlock.PluginLockUtils;
import com.android.systemui.wallpaper.KeyguardWallpaperController;
import com.android.systemui.wallpaper.log.WallpaperLogger;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DlsRestoreDispatcher {
    public DlsRestoreHandler mHandler;
    public KeyguardWallpaperController.AnonymousClass8 mOnRestoreDlsListener;
    public final PluginLockUtils mPluginLockUtils;
    public int mRetryCount = 0;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class DlsRestoreHandler extends Handler {
        public /* synthetic */ DlsRestoreHandler(DlsRestoreDispatcher dlsRestoreDispatcher, int i) {
            this();
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            Bundle data = message.getData();
            if (message.what == 0 && data != null) {
                Bundle callProvider = DlsRestoreDispatcher.this.mPluginLockUtils.callProvider("restore_dls", data);
                boolean z = false;
                if (callProvider != null) {
                    z = callProvider.getBoolean("result", false);
                }
                if (z) {
                    post(new Runnable() { // from class: com.android.systemui.wallpaper.DlsRestoreDispatcher$DlsRestoreHandler$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            KeyguardWallpaperController.AnonymousClass8 anonymousClass8 = DlsRestoreDispatcher.this.mOnRestoreDlsListener;
                            anonymousClass8.getClass();
                            String concat = "onDlsRestored reason = ".concat("RESTORE_DLS_RESULT_SUCCESS");
                            KeyguardWallpaperController keyguardWallpaperController = KeyguardWallpaperController.sController;
                            KeyguardWallpaperController.this.printLognAddHistory(concat);
                        }
                    });
                } else {
                    DlsRestoreDispatcher dlsRestoreDispatcher = DlsRestoreDispatcher.this;
                    if (dlsRestoreDispatcher.mRetryCount < 20) {
                        Message message2 = new Message();
                        Bundle bundle = new Bundle(data);
                        message2.what = message.what;
                        message2.setData(bundle);
                        DlsRestoreDispatcher.this.mRetryCount++;
                        sendMessageDelayed(message2, 700L);
                    } else {
                        KeyguardWallpaperController.AnonymousClass8 anonymousClass8 = dlsRestoreDispatcher.mOnRestoreDlsListener;
                        if (anonymousClass8 != null) {
                            String concat = "onDlsRestored reason = ".concat("UNKNOWN");
                            KeyguardWallpaperController keyguardWallpaperController = KeyguardWallpaperController.sController;
                            KeyguardWallpaperController.this.printLognAddHistory(concat);
                        }
                    }
                }
                super.handleMessage(message);
            }
        }

        private DlsRestoreHandler() {
        }
    }

    public DlsRestoreDispatcher(Context context, WallpaperLogger wallpaperLogger, PluginLockUtils pluginLockUtils) {
        this.mPluginLockUtils = pluginLockUtils;
    }
}
