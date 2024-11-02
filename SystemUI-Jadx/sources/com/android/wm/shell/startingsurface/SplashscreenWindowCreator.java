package com.android.wm.shell.startingsurface;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Debug;
import android.os.IBinder;
import android.os.SystemClock;
import android.util.Slog;
import android.util.SparseArray;
import android.view.Choreographer;
import android.view.SurfaceControlViewHost;
import android.view.View;
import android.view.ViewRootImpl;
import android.view.WindowManager;
import android.view.WindowManagerGlobal;
import android.window.SplashScreenView;
import android.window.StartingWindowRemovalInfo;
import com.android.systemui.statusbar.phone.CentralSurfacesImpl;
import com.android.systemui.statusbar.phone.CentralSurfacesImpl$$ExternalSyntheticLambda0;
import com.android.systemui.statusbar.phone.CentralSurfacesImpl$$ExternalSyntheticLambda24;
import com.android.systemui.util.concurrency.ExecutorImpl;
import com.android.wm.shell.common.HandlerExecutor;
import com.android.wm.shell.common.ShellExecutor;
import com.android.wm.shell.protolog.ShellProtoLogCache;
import com.android.wm.shell.protolog.ShellProtoLogGroup;
import com.android.wm.shell.protolog.ShellProtoLogImpl;
import com.android.wm.shell.startingsurface.StartingSurfaceDrawer;
import com.samsung.android.nexus.video.VideoPlayer;
import java.util.Iterator;
import java.util.function.Supplier;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SplashscreenWindowCreator extends AbsSplashWindowCreator {
    public final SparseArray mAnimatedSplashScreenSurfaceHosts;
    public Choreographer mChoreographer;
    public final WindowManagerGlobal mWindowManagerGlobal;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class SplashScreenViewSupplier implements Supplier {
        public boolean mIsViewSet;
        public Runnable mUiThreadInitTask;
        public SplashScreenView mView;

        private SplashScreenViewSupplier() {
        }

        public /* synthetic */ SplashScreenViewSupplier(int i) {
            this();
        }

        @Override // java.util.function.Supplier
        public final SplashScreenView get() {
            SplashScreenView splashScreenView;
            synchronized (this) {
                while (!this.mIsViewSet) {
                    try {
                        wait();
                    } catch (InterruptedException unused) {
                    }
                }
                Runnable runnable = this.mUiThreadInitTask;
                if (runnable != null) {
                    runnable.run();
                    this.mUiThreadInitTask = null;
                }
                splashScreenView = this.mView;
            }
            return splashScreenView;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class SplashWindowRecord extends StartingSurfaceDrawer.StartingWindowRecord {
        public final IBinder mAppToken;
        public final long mCreateTime = SystemClock.uptimeMillis();
        public boolean mDrawsSystemBarBackgrounds;
        public final View mRootView;
        public boolean mSetSplashScreen;
        public SplashScreenView mSplashView;
        public final int mSuggestType;
        public int mSystemBarAppearance;

        public SplashWindowRecord(IBinder iBinder, View view, int i) {
            this.mAppToken = iBinder;
            this.mRootView = view;
            this.mSuggestType = i;
        }

        @Override // com.android.wm.shell.startingsurface.StartingSurfaceDrawer.StartingWindowRecord
        public final boolean removeIfPossible(StartingWindowRemovalInfo startingWindowRemovalInfo, boolean z) {
            View view = this.mRootView;
            if (view == null) {
                return true;
            }
            SplashScreenView splashScreenView = this.mSplashView;
            SplashscreenWindowCreator splashscreenWindowCreator = SplashscreenWindowCreator.this;
            if (splashScreenView == null) {
                if (!view.isAttachedToWindow()) {
                    Iterator it = splashscreenWindowCreator.mWindowManagerGlobal.getRootViews(this.mAppToken).iterator();
                    while (it.hasNext()) {
                        if (((ViewRootImpl) it.next()).getView() == view) {
                            Slog.e("ShellStartingWindow", "Force remove empty splash screen added to WM, info=" + startingWindowRemovalInfo + ", caller=" + Debug.getCallers(7));
                            splashscreenWindowCreator.removeWindowInner(view, false, true);
                            return true;
                        }
                    }
                }
                Slog.e("ShellStartingWindow", "Found empty splash screen, remove!");
                splashscreenWindowCreator.removeWindowInner(view, false, false);
                return true;
            }
            if (view != null && view.isAttachedToWindow()) {
                if (view.getLayoutParams() instanceof WindowManager.LayoutParams) {
                    WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) view.getLayoutParams();
                    if (this.mDrawsSystemBarBackgrounds) {
                        layoutParams.flags |= VideoPlayer.MEDIA_ERROR_SYSTEM;
                    } else {
                        layoutParams.flags &= Integer.MAX_VALUE;
                    }
                    view.setLayoutParams(layoutParams);
                }
                view.getWindowInsetsController().setSystemBarsAppearance(this.mSystemBarAppearance, 24);
            }
            if (!z && this.mSuggestType != 4) {
                if (startingWindowRemovalInfo.playRevealAnimation) {
                    splashscreenWindowCreator.mSplashscreenContentDrawer.applyExitAnimation(this.mSplashView, startingWindowRemovalInfo.windowAnimationLeash, startingWindowRemovalInfo.mainFrame, new SplashscreenWindowCreator$$ExternalSyntheticLambda0(this, 1), this.mCreateTime, startingWindowRemovalInfo.roundedCornerRadius, startingWindowRemovalInfo.duration);
                } else {
                    splashscreenWindowCreator.removeWindowInner(view, true, false);
                }
            } else {
                splashscreenWindowCreator.removeWindowInner(view, false, false);
            }
            return true;
        }
    }

    public SplashscreenWindowCreator(SplashscreenContentDrawer splashscreenContentDrawer, Context context, ShellExecutor shellExecutor, DisplayManager displayManager, StartingSurfaceDrawer.StartingWindowRecordManager startingWindowRecordManager) {
        super(splashscreenContentDrawer, context, shellExecutor, displayManager, startingWindowRecordManager);
        this.mAnimatedSplashScreenSurfaceHosts = new SparseArray(1);
        ((HandlerExecutor) this.mSplashScreenExecutor).execute(new SplashscreenWindowCreator$$ExternalSyntheticLambda0(this, 0));
        this.mWindowManagerGlobal = WindowManagerGlobal.getInstance();
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:8:0x006d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean addWindow(int r17, android.os.IBinder r18, android.view.View r19, android.view.Display r20, android.view.WindowManager.LayoutParams r21, int r22) {
        /*
            r16 = this;
            r1 = r16
            r2 = r17
            r3 = r18
            r10 = r19
            android.view.WindowManagerGlobal r11 = r1.mWindowManagerGlobal
            java.lang.String r12 = "view not successfully added to wm, removing view"
            java.lang.String r13 = "ShellStartingWindow"
            android.content.Context r0 = r19.getContext()
            r14 = 32
            r9 = 1
            java.lang.String r4 = "addRootView"
            android.os.Trace.traceBegin(r14, r4)     // Catch: android.view.WindowManager.BadTokenException -> L39 java.lang.Throwable -> L83
            android.view.WindowManagerGlobal r4 = r1.mWindowManagerGlobal     // Catch: android.view.WindowManager.BadTokenException -> L39 java.lang.Throwable -> L83
            r8 = 0
            int r0 = r0.getUserId()     // Catch: android.view.WindowManager.BadTokenException -> L39 java.lang.Throwable -> L83
            r5 = r19
            r6 = r21
            r7 = r20
            r9 = r0
            r4.addView(r5, r6, r7, r8, r9)     // Catch: android.view.WindowManager.BadTokenException -> L39 java.lang.Throwable -> L83
            android.os.Trace.traceEnd(r14)
            android.view.ViewParent r0 = r19.getParent()
            if (r0 != 0) goto L36
            goto L61
        L36:
            r4 = 1
            r9 = 1
            goto L6b
        L39:
            r0 = move-exception
            goto L3d
        L3b:
            r4 = 1
            goto L85
        L3d:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L83
            r4.<init>()     // Catch: java.lang.Throwable -> L83
            r4.append(r3)     // Catch: java.lang.Throwable -> L83
            java.lang.String r5 = " already running, starting window not displayed. "
            r4.append(r5)     // Catch: java.lang.Throwable -> L83
            java.lang.String r0 = r0.getMessage()     // Catch: java.lang.Throwable -> L83
            r4.append(r0)     // Catch: java.lang.Throwable -> L83
            java.lang.String r0 = r4.toString()     // Catch: java.lang.Throwable -> L83
            android.util.Slog.w(r13, r0)     // Catch: java.lang.Throwable -> L83
            android.os.Trace.traceEnd(r14)
            android.view.ViewParent r0 = r19.getParent()
            if (r0 != 0) goto L69
        L61:
            android.util.Slog.w(r13, r12)
            r4 = 1
            r11.removeView(r10, r4)
            goto L6a
        L69:
            r4 = 1
        L6a:
            r9 = 0
        L6b:
            if (r9 == 0) goto L82
            com.android.wm.shell.startingsurface.StartingSurfaceDrawer$StartingWindowRecordManager r0 = r1.mStartingWindowRecordManager
            android.window.StartingWindowRemovalInfo r5 = r0.mTmpRemovalInfo
            r5.taskId = r2
            r0.removeWindow(r5, r4)
            com.android.wm.shell.startingsurface.SplashscreenWindowCreator$SplashWindowRecord r4 = new com.android.wm.shell.startingsurface.SplashscreenWindowCreator$SplashWindowRecord
            r5 = r22
            r4.<init>(r3, r10, r5)
            android.util.SparseArray r0 = r0.mStartingWindowRecords
            r0.put(r2, r4)
        L82:
            return r9
        L83:
            r0 = move-exception
            goto L3b
        L85:
            android.os.Trace.traceEnd(r14)
            android.view.ViewParent r1 = r19.getParent()
            if (r1 != 0) goto L94
            android.util.Slog.w(r13, r12)
            r11.removeView(r10, r4)
        L94:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.startingsurface.SplashscreenWindowCreator.addWindow(int, android.os.IBinder, android.view.View, android.view.Display, android.view.WindowManager$LayoutParams, int):boolean");
    }

    public final void onAppSplashScreenViewRemoved(int i, boolean z) {
        String str;
        SparseArray sparseArray = this.mAnimatedSplashScreenSurfaceHosts;
        SurfaceControlViewHost surfaceControlViewHost = (SurfaceControlViewHost) sparseArray.get(i);
        if (surfaceControlViewHost == null) {
            return;
        }
        sparseArray.remove(i);
        if (ShellProtoLogCache.WM_SHELL_STARTING_WINDOW_enabled) {
            if (z) {
                str = "Server cleaned up";
            } else {
                str = "App removed";
            }
            ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_STARTING_WINDOW, -2017810598, 4, null, str, Long.valueOf(i));
        }
        SplashScreenView.releaseIconHost(surfaceControlViewHost);
    }

    public final void removeWindowInner(View view, boolean z, boolean z2) {
        CentralSurfacesImpl$$ExternalSyntheticLambda0 centralSurfacesImpl$$ExternalSyntheticLambda0 = this.mSysuiProxy;
        boolean z3 = false;
        byte b = 0;
        if (centralSurfacesImpl$$ExternalSyntheticLambda0 != null) {
            CentralSurfacesImpl centralSurfacesImpl = (CentralSurfacesImpl) centralSurfacesImpl$$ExternalSyntheticLambda0.f$0;
            centralSurfacesImpl.getClass();
            ((ExecutorImpl) centralSurfacesImpl.mMainExecutor).execute(new CentralSurfacesImpl$$ExternalSyntheticLambda24(centralSurfacesImpl, z3, "ShellStartingWindow", b == true ? 1 : 0));
        }
        if (!view.isAttachedToWindow() && !z2) {
            return;
        }
        WindowManagerGlobal windowManagerGlobal = this.mWindowManagerGlobal;
        if (z) {
            if (view.getViewRootImpl() != null) {
                WindowManager.LayoutParams layoutParams = view.getViewRootImpl().mWindowAttributes;
                layoutParams.alpha = 0.0f;
                windowManagerGlobal.updateViewLayout(view, layoutParams);
            }
            view.setVisibility(8);
        }
        windowManagerGlobal.removeView(view, false);
    }
}
