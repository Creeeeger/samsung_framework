package com.android.wm.shell.windowdecor;

import android.app.ActivityManager;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Binder;
import android.os.IBinder;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.SurfaceControl;
import android.view.SurfaceControlViewHost;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.WindowlessWindowManager;
import android.window.SurfaceSyncGroup;
import android.window.WindowContainerTransaction;
import com.android.wm.shell.ShellTaskOrganizer;
import com.android.wm.shell.common.DisplayController;
import com.samsung.android.multiwindow.MultiWindowManager;
import com.samsung.android.rune.CoreRune;
import java.util.function.Supplier;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class WindowDecoration implements AutoCloseable {
    public SurfaceControl mCaptionContainerSurface;
    public final Rect mCaptionInsetsRect;
    public WindowlessWindowManager mCaptionWindowManager;
    public final Context mContext;
    public Context mDecorWindowContext;
    public SurfaceControl mDecorationContainerSurface;
    public Display mDisplay;
    public final DisplayController mDisplayController;
    public SurfaceControl mDragResizeInputSurface;
    public boolean mIsDexEnabled;
    public boolean mIsDexMode;
    public boolean mIsNewDexMode;
    public boolean mIsRemoving;
    public int mLayoutResId;
    public final AnonymousClass1 mOnDisplaysChangedListener;
    public final Binder mOwner;
    public final Supplier mSurfaceControlBuilderSupplier;
    public final Supplier mSurfaceControlTransactionSupplier;
    public final SurfaceControlViewHostFactory mSurfaceControlViewHostFactory;
    public ActivityManager.RunningTaskInfo mTaskInfo;
    public final ShellTaskOrganizer mTaskOrganizer;
    public final SurfaceControl mTaskSurface;
    public final float[] mTmpColor;
    public SurfaceControlViewHost mViewHost;
    public final Supplier mWindowContainerTransactionSupplier;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class AdditionalWindow {
        public final Supplier mTransactionSupplier;
        public SurfaceControl mWindowSurface;
        public SurfaceControlViewHost mWindowViewHost;

        public AdditionalWindow(SurfaceControl surfaceControl, SurfaceControlViewHost surfaceControlViewHost, Supplier<SurfaceControl.Transaction> supplier) {
            this.mWindowSurface = surfaceControl;
            this.mWindowViewHost = surfaceControlViewHost;
            this.mTransactionSupplier = supplier;
        }

        public final void releaseView() {
            boolean z;
            SurfaceControlViewHost surfaceControlViewHost = this.mWindowViewHost;
            if (surfaceControlViewHost != null) {
                surfaceControlViewHost.getWindowlessWM();
            }
            SurfaceControlViewHost surfaceControlViewHost2 = this.mWindowViewHost;
            if (surfaceControlViewHost2 != null) {
                surfaceControlViewHost2.release();
                this.mWindowViewHost = null;
            }
            SurfaceControl.Transaction transaction = (SurfaceControl.Transaction) this.mTransactionSupplier.get();
            SurfaceControl surfaceControl = this.mWindowSurface;
            if (surfaceControl != null) {
                transaction.remove(surfaceControl);
                this.mWindowSurface = null;
                z = true;
            } else {
                z = false;
            }
            if (z) {
                transaction.apply();
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class RelayoutParams {
        public boolean mApplyStartTransactionOnDraw;
        public int mCaptionHeightId;
        public int mCaptionType;
        public int mCaptionWidthId;
        public int mCaptionX;
        public int mCaptionY;
        public int mCornerRadius;
        public int mHorizontalInset;
        public int mLayoutResId;
        public ActivityManager.RunningTaskInfo mRunningTaskInfo;
        public int mShadowRadiusId;

        public final void reset() {
            this.mLayoutResId = 0;
            this.mCaptionHeightId = 0;
            this.mCaptionWidthId = 0;
            this.mShadowRadiusId = 0;
            this.mCornerRadius = 0;
            this.mCaptionX = 0;
            this.mCaptionY = 0;
            this.mHorizontalInset = 0;
            this.mApplyStartTransactionOnDraw = false;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class RelayoutResult {
        public int mCaptionHeight;
        public int mDecorContainerOffsetX;
        public int mDecorContainerOffsetY;
        public int mHeight;
        public View mRootView;
        public int mWidth;
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface SurfaceControlViewHostFactory {
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public WindowDecoration(android.content.Context r11, com.android.wm.shell.common.DisplayController r12, com.android.wm.shell.ShellTaskOrganizer r13, android.app.ActivityManager.RunningTaskInfo r14, android.view.SurfaceControl r15) {
        /*
            r10 = this;
            com.android.wm.shell.windowdecor.WindowDecoration$$ExternalSyntheticLambda0 r6 = new com.android.wm.shell.windowdecor.WindowDecoration$$ExternalSyntheticLambda0
            r0 = 0
            r6.<init>()
            com.android.wm.shell.windowdecor.WindowDecoration$$ExternalSyntheticLambda0 r7 = new com.android.wm.shell.windowdecor.WindowDecoration$$ExternalSyntheticLambda0
            r0 = 1
            r7.<init>()
            com.android.wm.shell.windowdecor.WindowDecoration$$ExternalSyntheticLambda0 r8 = new com.android.wm.shell.windowdecor.WindowDecoration$$ExternalSyntheticLambda0
            r0 = 2
            r8.<init>()
            com.android.wm.shell.windowdecor.WindowDecoration$2 r9 = new com.android.wm.shell.windowdecor.WindowDecoration$2
            r9.<init>()
            r0 = r10
            r1 = r11
            r2 = r12
            r3 = r13
            r4 = r14
            r5 = r15
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.windowdecor.WindowDecoration.<init>(android.content.Context, com.android.wm.shell.common.DisplayController, com.android.wm.shell.ShellTaskOrganizer, android.app.ActivityManager$RunningTaskInfo, android.view.SurfaceControl):void");
    }

    public static boolean hasBarFocus(ActivityManager.RunningTaskInfo runningTaskInfo) {
        if (!runningTaskInfo.isFocused) {
            return false;
        }
        if (runningTaskInfo.getWindowingMode() == 1 && MultiWindowManager.getInstance().getMultiWindowModeStates(0) != 1) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int loadDimensionPixelSize(int i, Resources resources) {
        if (i == 0) {
            return 0;
        }
        return resources.getDimensionPixelSize(i);
    }

    public final AdditionalWindow addWindow(int i, String str, SurfaceControl.Transaction transaction, SurfaceSyncGroup surfaceSyncGroup, int i2, int i3, int i4, int i5, int i6, int i7) {
        SurfaceControl.Builder builder = (SurfaceControl.Builder) this.mSurfaceControlBuilderSupplier.get();
        StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m(str, " of Task=");
        m.append(this.mTaskInfo.taskId);
        SurfaceControl build = builder.setName(m.toString()).setContainerLayer().setParent(this.mDecorationContainerSurface).build();
        final View inflate = LayoutInflater.from(this.mDecorWindowContext).inflate(i, (ViewGroup) null);
        transaction.setPosition(build, i2, i3).setWindowCrop(build, i4, i5).setShadowRadius(build, i6).setCornerRadius(build, i7).show(build);
        final WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(i4, i5, 2, 8, -2);
        layoutParams.setTitle("Additional window of Task=" + this.mTaskInfo.taskId);
        layoutParams.setTrustedOverlay();
        WindowlessWindowManager windowlessWindowManager = new WindowlessWindowManager(this.mTaskInfo.configuration, build, (IBinder) null);
        SurfaceControlViewHostFactory surfaceControlViewHostFactory = this.mSurfaceControlViewHostFactory;
        Context context = this.mDecorWindowContext;
        Display display = this.mDisplay;
        surfaceControlViewHostFactory.getClass();
        final SurfaceControlViewHost surfaceControlViewHost = new SurfaceControlViewHost(context, display, windowlessWindowManager, "WindowDecoration");
        surfaceSyncGroup.add(surfaceControlViewHost.getSurfacePackage(), new Runnable() { // from class: com.android.wm.shell.windowdecor.WindowDecoration$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                surfaceControlViewHost.setView(inflate, layoutParams);
            }
        });
        return new AdditionalWindow(build, surfaceControlViewHost, this.mSurfaceControlTransactionSupplier);
    }

    public MultitaskingWindowDecoration asMultitaskingWindowDecoration() {
        return null;
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        this.mDisplayController.removeDisplayWindowListener(this.mOnDisplaysChangedListener);
        releaseViews();
    }

    public Configuration getConfigurationWithOverrides(ActivityManager.RunningTaskInfo runningTaskInfo) {
        return runningTaskInfo.getConfiguration();
    }

    public String getTag() {
        return "WindowDecoration";
    }

    public abstract void relayout(ActivityManager.RunningTaskInfo runningTaskInfo);

    /* JADX WARN: Code restructure failed: missing block: B:44:0x00ae, code lost:
    
        if (((r8.diff(r4) & 4) != 0 || ((com.samsung.android.rune.CoreRune.MW_CAPTION_SHELL_DEX && r8.semDesktopModeEnabled != r4.semDesktopModeEnabled) || r8.windowConfiguration.getWindowingMode() != r4.windowConfiguration.getWindowingMode() || (com.android.wm.shell.windowdecor.CaptionGlobalState.COLOR_THEME_ENABLED && r8.isNightModeActive() != r4.isNightModeActive()))) != false) goto L55;
     */
    /* JADX WARN: Removed duplicated region for block: B:130:0x03c4  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x03fc  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x04cc  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x050c  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x057b  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x05a2  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0491  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x03c6  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x03bb  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x02bd  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01cd  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x020e  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x02cc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void relayout(com.android.wm.shell.windowdecor.WindowDecoration.RelayoutParams r29, android.view.SurfaceControl.Transaction r30, android.view.SurfaceControl.Transaction r31, android.window.WindowContainerTransaction r32, com.android.wm.shell.windowdecor.WindowDecorLinearLayout r33, com.android.wm.shell.windowdecor.WindowDecoration.RelayoutResult r34, boolean r35, boolean r36) {
        /*
            Method dump skipped, instructions count: 1459
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.windowdecor.WindowDecoration.relayout(com.android.wm.shell.windowdecor.WindowDecoration$RelayoutParams, android.view.SurfaceControl$Transaction, android.view.SurfaceControl$Transaction, android.window.WindowContainerTransaction, com.android.wm.shell.windowdecor.WindowDecorLinearLayout, com.android.wm.shell.windowdecor.WindowDecoration$RelayoutResult, boolean, boolean):void");
    }

    public void releaseViews() {
        boolean z;
        SurfaceControl surfaceControl;
        SurfaceControlViewHost surfaceControlViewHost = this.mViewHost;
        if (surfaceControlViewHost != null) {
            surfaceControlViewHost.release();
            this.mViewHost = null;
        }
        this.mCaptionWindowManager = null;
        SurfaceControl.Transaction transaction = (SurfaceControl.Transaction) this.mSurfaceControlTransactionSupplier.get();
        SurfaceControl surfaceControl2 = this.mCaptionContainerSurface;
        boolean z2 = true;
        if (surfaceControl2 != null) {
            transaction.remove(surfaceControl2);
            this.mCaptionContainerSurface = null;
            z = true;
        } else {
            z = false;
        }
        SurfaceControl surfaceControl3 = this.mDecorationContainerSurface;
        if (surfaceControl3 != null) {
            transaction.remove(surfaceControl3);
            this.mDecorationContainerSurface = null;
            z = true;
        }
        if (CoreRune.MW_CAPTION_SHELL && (surfaceControl = this.mDragResizeInputSurface) != null) {
            transaction.remove(surfaceControl);
            this.mDragResizeInputSurface = null;
        } else {
            z2 = z;
        }
        if (z2) {
            transaction.apply();
        }
        WindowContainerTransaction windowContainerTransaction = (WindowContainerTransaction) this.mWindowContainerTransactionSupplier.get();
        windowContainerTransaction.removeInsetsSource(this.mTaskInfo.token, this.mOwner, 0, WindowInsets.Type.captionBar());
        this.mTaskOrganizer.applyTransaction(windowContainerTransaction);
    }

    public final boolean shouldHideHandlerByAppRequest(ActivityManager.RunningTaskInfo runningTaskInfo) {
        if ((CoreRune.MW_CAPTION_SHELL_DEX && this.mIsDexMode) || runningTaskInfo.isFreeform() || !runningTaskInfo.isCaptionHandlerHidden) {
            return false;
        }
        return true;
    }

    public final void updateDexStates() {
        boolean z;
        this.mIsDexMode = this.mTaskInfo.configuration.isDexMode();
        boolean z2 = true;
        if (CoreRune.MT_NEW_DEX && this.mTaskInfo.configuration.isNewDexMode()) {
            z = true;
        } else {
            z = false;
        }
        this.mIsNewDexMode = z;
        if (!this.mIsDexMode && !z) {
            z2 = false;
        }
        this.mIsDexEnabled = z2;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.android.wm.shell.windowdecor.WindowDecoration$1] */
    public WindowDecoration(Context context, DisplayController displayController, ShellTaskOrganizer shellTaskOrganizer, ActivityManager.RunningTaskInfo runningTaskInfo, SurfaceControl surfaceControl, Supplier<SurfaceControl.Builder> supplier, Supplier<SurfaceControl.Transaction> supplier2, Supplier<WindowContainerTransaction> supplier3, SurfaceControlViewHostFactory surfaceControlViewHostFactory) {
        Display display;
        this.mOnDisplaysChangedListener = new DisplayController.OnDisplaysChangedListener() { // from class: com.android.wm.shell.windowdecor.WindowDecoration.1
            @Override // com.android.wm.shell.common.DisplayController.OnDisplaysChangedListener
            public final void onDisplayAdded(int i) {
                WindowDecoration windowDecoration = WindowDecoration.this;
                if (windowDecoration.mTaskInfo.displayId != i) {
                    return;
                }
                windowDecoration.mDisplayController.removeDisplayWindowListener(this);
                windowDecoration.relayout(windowDecoration.mTaskInfo);
            }
        };
        this.mIsRemoving = false;
        this.mOwner = new Binder();
        this.mCaptionInsetsRect = new Rect();
        this.mTmpColor = new float[3];
        this.mContext = context;
        this.mDisplayController = displayController;
        this.mTaskOrganizer = shellTaskOrganizer;
        this.mTaskInfo = runningTaskInfo;
        this.mTaskSurface = surfaceControl;
        this.mSurfaceControlBuilderSupplier = supplier;
        this.mSurfaceControlTransactionSupplier = supplier2;
        this.mWindowContainerTransactionSupplier = supplier3;
        this.mSurfaceControlViewHostFactory = surfaceControlViewHostFactory;
        this.mDisplay = displayController.getDisplay(runningTaskInfo.displayId);
        this.mDecorWindowContext = context.createConfigurationContext(getConfigurationWithOverrides(this.mTaskInfo));
        if (CoreRune.MW_CAPTION_SHELL_BUG_FIX && (display = this.mDisplay) != null && display.getDisplayId() != this.mDecorWindowContext.getDisplayId()) {
            this.mDecorWindowContext.updateDisplay(this.mDisplay.getDisplayId());
        }
        if (CoreRune.MW_CAPTION_SHELL_DEX) {
            updateDexStates();
        }
        if (CoreRune.MW_CAPTION_SHELL) {
            this.mIsRemoving = false;
        }
    }
}
