package com.android.systemui.screenshot.appclips;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import android.view.SurfaceControl;
import android.view.ViewRootImpl;
import android.window.ScreenCapture;
import com.android.systemui.screenshot.appclips.IAppClipsScreenshotHelperService;
import com.android.wm.shell.bubbles.BubbleController;
import com.android.wm.shell.bubbles.Bubbles;
import com.android.wm.shell.common.HandlerExecutor;
import java.util.Optional;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class AppClipsScreenshotHelperService extends Service {
    public final Optional mOptionalBubbles;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.screenshot.appclips.AppClipsScreenshotHelperService$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass1 extends IAppClipsScreenshotHelperService.Stub {
        public AnonymousClass1() {
        }

        @Override // com.android.systemui.screenshot.appclips.IAppClipsScreenshotHelperService
        public final ScreenshotHardwareBufferInternal takeScreenshot(final int i) {
            if (AppClipsScreenshotHelperService.this.mOptionalBubbles.isEmpty()) {
                return null;
            }
            final BubbleController.BubblesImpl bubblesImpl = (BubbleController.BubblesImpl) ((Bubbles) AppClipsScreenshotHelperService.this.mOptionalBubbles.get());
            bubblesImpl.getClass();
            final ScreenCapture.SynchronousScreenCaptureListener createSyncCaptureListener = ScreenCapture.createSyncCaptureListener();
            ((HandlerExecutor) BubbleController.this.mMainExecutor).execute(new Runnable() { // from class: com.android.wm.shell.bubbles.BubbleController$BubblesImpl$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    ScreenCapture.CaptureArgs captureArgs;
                    ViewRootImpl viewRootImpl;
                    SurfaceControl surfaceControl;
                    BubbleController.BubblesImpl bubblesImpl2 = BubbleController.BubblesImpl.this;
                    int i2 = i;
                    ScreenCapture.SynchronousScreenCaptureListener synchronousScreenCaptureListener = createSyncCaptureListener;
                    BubbleController bubbleController = BubbleController.this;
                    bubbleController.getClass();
                    try {
                        BubbleStackView bubbleStackView = bubbleController.mStackView;
                        if (bubbleStackView != null && (viewRootImpl = bubbleStackView.getViewRootImpl()) != null && (surfaceControl = viewRootImpl.getSurfaceControl()) != null) {
                            captureArgs = new ScreenCapture.CaptureArgs.Builder().setExcludeLayers(new SurfaceControl[]{surfaceControl}).build();
                        } else {
                            captureArgs = null;
                        }
                        bubbleController.mWmService.captureDisplay(i2, captureArgs, synchronousScreenCaptureListener);
                    } catch (RemoteException unused) {
                        Log.e("Bubbles", "Failed to capture screenshot");
                    }
                }
            });
            ScreenCapture.ScreenshotHardwareBuffer buffer = createSyncCaptureListener.getBuffer();
            if (buffer == null) {
                return null;
            }
            return new ScreenshotHardwareBufferInternal(buffer);
        }
    }

    public AppClipsScreenshotHelperService(Optional<Bubbles> optional) {
        this.mOptionalBubbles = optional;
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return new AnonymousClass1();
    }
}
