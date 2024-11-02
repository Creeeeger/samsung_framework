package com.android.systemui;

import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PixelFormat;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.hardware.graphics.common.DisplayDecorationSupport;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemProperties;
import android.os.Trace;
import android.provider.Settings;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.DisplayUtils;
import android.util.Log;
import android.util.Size;
import android.view.Display;
import android.view.DisplayCutout;
import android.view.DisplayInfo;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import com.android.internal.util.Preconditions;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.settingslib.Utils;
import com.android.systemui.CameraAvailabilityListener;
import com.android.systemui.biometrics.AuthController;
import com.android.systemui.decor.CoverPrivacyDotViewController;
import com.android.systemui.decor.CoverRoundedCornerDecorProviderFactory;
import com.android.systemui.decor.CoverViewState;
import com.android.systemui.decor.CutoutDecorProviderFactory;
import com.android.systemui.decor.DecorProvider;
import com.android.systemui.decor.DecorProviderFactory;
import com.android.systemui.decor.FaceScanningProviderFactory;
import com.android.systemui.decor.OverlayWindow;
import com.android.systemui.decor.PrivacyDotDecorProviderFactory;
import com.android.systemui.decor.RoundedCornerResDelegate;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.log.LogLevel;
import com.android.systemui.log.ScreenDecorationsLogger;
import com.android.systemui.qs.SettingObserver;
import com.android.systemui.settings.DisplayTracker;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.statusbar.events.PrivacyDotViewController;
import com.android.systemui.statusbar.phone.IndicatorCutoutUtil;
import com.android.systemui.statusbar.phone.IndicatorGardenPresenter;
import com.android.systemui.tuner.TunerService;
import com.android.systemui.util.DeviceType;
import com.android.systemui.util.DumpUtilsKt;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.util.concurrency.ExecutorImpl;
import com.android.systemui.util.concurrency.ThreadFactory;
import com.android.systemui.util.concurrency.ThreadFactoryImpl;
import com.android.systemui.util.settings.SecureSettings;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import com.samsung.android.knox.lockscreen.EmergencyPhoneWidget;
import com.samsung.android.view.SemWindowManager;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executor;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ScreenDecorations implements CoreStartable, TunerService.Tunable, Dumpable {
    public static final boolean DEBUG_COLOR;
    public static final boolean DEBUG_DISABLE_SCREEN_DECORATIONS = SystemProperties.getBoolean("debug.disable_screen_decorations", false);
    public static final boolean DEBUG_PRIVACY_INDICATOR;
    public static final boolean DEBUG_SCREENSHOT_ROUNDED_CORNERS;
    public static final int[] DISPLAY_CUTOUT_IDS;
    public final ScreenDecorations$$ExternalSyntheticLambda2 mAODStateSettingsCallback;
    public final AuthController mAuthController;
    public CameraAvailabilityListener mCameraListener;
    public SettingObserver mColorInversionSetting;
    public final Context mContext;
    public final CoverPrivacyDotViewController mCoverDotViewController;
    public boolean mCoverPendingConfigChange;
    public int mCoverRotation;
    public CoverRoundedCornerDecorProviderFactory mCoverRoundedCornerFactory;
    public CutoutDecorProviderFactory mCutoutFactory;
    public DisplayCutout mDisplayCutout;
    DisplayTracker.Callback mDisplayListener;
    public Display.Mode mDisplayMode;
    public final DisplayTracker mDisplayTracker;
    String mDisplayUniqueId;
    public final PrivacyDotDecorProviderFactory mDotFactory;
    public final PrivacyDotViewController mDotViewController;
    public ExecutorImpl mExecutor;
    public final FaceScanningProviderFactory mFaceScanningFactory;
    public final ScreenDecorations$$ExternalSyntheticLambda2 mFillUDCSettingsCallback;
    public Handler mHandler;
    protected DisplayDecorationSupport mHwcScreenDecorationSupport;
    public final IndicatorCutoutUtil mIndicatorCutoutUtil;
    public final IndicatorGardenPresenter mIndicatorGardenPresenter;
    public boolean mIsDotViewVisible;
    protected boolean mIsRegistered;
    public final ScreenDecorationsLogger mLogger;
    public final Executor mMainExecutor;
    public boolean mPendingConfigChange;
    public int mRotation;
    protected DecorProviderFactory mRoundedCornerFactory;
    protected RoundedCornerResDelegate mRoundedCornerResDelegate;
    ScreenDecorHwcLayer mScreenDecorHwcLayer;
    ViewGroup mScreenDecorHwcWindow;
    public final SecureSettings mSecureSettings;
    public final SettingsHelper mSettingsHelper;
    public final ThreadFactory mThreadFactory;
    public final TunerService mTunerService;
    public final UserTracker mUserTracker;
    public WindowManager mWindowManager;
    public int mProviderRefreshToken = 0;
    protected OverlayWindow[] mOverlays = null;
    public int mTintColor = EmergencyPhoneWidget.BG_COLOR;
    protected DisplayInfo mDisplayInfo = new DisplayInfo();
    public Context mCoverWindowContext = null;
    public final DisplayInfo mCoverDisplayInfo = new DisplayInfo();
    public OverlayWindow mCoverOverlay = null;
    public boolean blockUpdateStatusIconContainerLayout = false;
    public final AnonymousClass1 mCameraTransitionCallback = new CameraAvailabilityListener.CameraTransitionCallback() { // from class: com.android.systemui.ScreenDecorations.1
        @Override // com.android.systemui.CameraAvailabilityListener.CameraTransitionCallback
        public final void onApplyCameraProtection(Path path, Rect rect) {
            ScreenDecorations screenDecorations = ScreenDecorations.this;
            LogBuffer.log$default(screenDecorations.mLogger.logBuffer, "ScreenDecorationsLog", LogLevel.DEBUG, "onApplyCameraProtection", null, 8, null);
            IndicatorCutoutUtil indicatorCutoutUtil = screenDecorations.mIndicatorCutoutUtil;
            boolean z = true;
            boolean z2 = true;
            if (indicatorCutoutUtil.isUDCModel) {
                if (BasicRune.STATUS_LAYOUT_SHOW_ICONS_IN_UDC) {
                    if (indicatorCutoutUtil.isUDCMainDisplay()) {
                        screenDecorations.blockUpdateStatusIconContainerLayout = true;
                    }
                    if (!screenDecorations.mCutoutFactory.shouldFillUDCDisplayCutout) {
                        screenDecorations.mMainExecutor.execute(new ScreenDecorations$$ExternalSyntheticLambda3(screenDecorations, z, z2 ? 1 : 0));
                        return;
                    }
                    return;
                }
                return;
            }
            screenDecorations.mCutoutFactory.isCameraProtectionVisible = true;
            screenDecorations.setupDecorations();
            screenDecorations.showCameraProtection(path, rect);
        }

        @Override // com.android.systemui.CameraAvailabilityListener.CameraTransitionCallback
        public final void onHideCameraProtection() {
            ScreenDecorations screenDecorations = ScreenDecorations.this;
            LogBuffer.log$default(screenDecorations.mLogger.logBuffer, "ScreenDecorationsLog", LogLevel.DEBUG, "onHideCameraProtection", null, 8, null);
            boolean z = false;
            if (screenDecorations.mIndicatorCutoutUtil.isUDCModel) {
                if (BasicRune.STATUS_LAYOUT_SHOW_ICONS_IN_UDC) {
                    screenDecorations.blockUpdateStatusIconContainerLayout = false;
                    if (!screenDecorations.mCutoutFactory.shouldFillUDCDisplayCutout) {
                        screenDecorations.mMainExecutor.execute(new ScreenDecorations$$ExternalSyntheticLambda3(screenDecorations, z, 1));
                        return;
                    }
                    return;
                }
                return;
            }
            screenDecorations.mCutoutFactory.isCameraProtectionVisible = false;
            screenDecorations.setupDecorations();
            screenDecorations.hideCameraProtection();
        }
    };
    PrivacyDotViewController.CreateListener mPrivacyDotCreateListener = new AnonymousClass2();
    PrivacyDotViewController.ShowingListener mPrivacyDotShowingListener = new AnonymousClass3();
    public final AnonymousClass4 mAuthControllerCallback = new AnonymousClass4();
    public final UserTracker.Callback mUserChangedCallback = new UserTracker.Callback() { // from class: com.android.systemui.ScreenDecorations.10
        @Override // com.android.systemui.settings.UserTracker.Callback
        public final void onUserChanged(int i, Context context) {
            ScreenDecorations screenDecorations = ScreenDecorations.this;
            screenDecorations.mColorInversionSetting.setUserId(i);
            screenDecorations.updateColorInversion(screenDecorations.mColorInversionSetting.getValue());
        }
    };
    public final int mFaceScanningViewId = R.id.face_scanning_anim;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.ScreenDecorations$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 implements PrivacyDotViewController.CreateListener {
        public AnonymousClass2() {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.ScreenDecorations$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass3 implements PrivacyDotViewController.ShowingListener {
        public AnonymousClass3() {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.ScreenDecorations$4, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass4 implements AuthController.Callback {
        public AnonymousClass4() {
        }

        @Override // com.android.systemui.biometrics.AuthController.Callback
        public final void onFaceSensorLocationChanged() {
            ScreenDecorations screenDecorations = ScreenDecorations.this;
            LogBuffer.log$default(screenDecorations.mLogger.logBuffer, "ScreenDecorationsLog", LogLevel.DEBUG, "AuthControllerCallback in ScreenDecorations triggered", null, 8, null);
            ExecutorImpl executorImpl = screenDecorations.mExecutor;
            if (executorImpl != null) {
                executorImpl.execute(new ScreenDecorations$4$$ExternalSyntheticLambda0(this, 0));
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class CoverRestartingPreDrawListener implements ViewTreeObserver.OnPreDrawListener {
        public final int mTargetRotation;
        public final View mView;

        public /* synthetic */ CoverRestartingPreDrawListener(ScreenDecorations screenDecorations, RegionInterceptingFrameLayout regionInterceptingFrameLayout, int i) {
            this((View) regionInterceptingFrameLayout, i);
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public final boolean onPreDraw() {
            int i;
            int i2;
            this.mView.getViewTreeObserver().removeOnPreDrawListener(this);
            int i3 = this.mTargetRotation;
            ScreenDecorations screenDecorations = ScreenDecorations.this;
            boolean z = true;
            if (i3 == screenDecorations.mCoverRotation) {
                return true;
            }
            screenDecorations.mCoverPendingConfigChange = false;
            if (screenDecorations.mHandler.getLooper().getThread() != Thread.currentThread()) {
                z = false;
            }
            Preconditions.checkState(z, "must call on " + screenDecorations.mHandler.getLooper().getThread() + ", but was " + Thread.currentThread());
            screenDecorations.mCoverWindowContext.getDisplay().getDisplayInfo(screenDecorations.mCoverDisplayInfo);
            int i4 = screenDecorations.mCoverDisplayInfo.rotation;
            CoverPrivacyDotViewController coverPrivacyDotViewController = screenDecorations.mCoverDotViewController;
            synchronized (coverPrivacyDotViewController.lock) {
                CoverViewState coverViewState = coverPrivacyDotViewController.nextViewState;
                if (i4 != coverViewState.rotation) {
                    boolean z2 = coverViewState.layoutRtl;
                    Unit unit = Unit.INSTANCE;
                    Iterator it = coverPrivacyDotViewController.getViews().iterator();
                    while (it.hasNext()) {
                        ((View) it.next()).setVisibility(4);
                    }
                    View selectDesignatedCorner = coverPrivacyDotViewController.selectDesignatedCorner(i4, z2);
                    if (selectDesignatedCorner != null) {
                        i = coverPrivacyDotViewController.cornerForView(selectDesignatedCorner);
                    } else {
                        i = -1;
                    }
                    int i5 = i;
                    synchronized (coverPrivacyDotViewController.lock) {
                        coverPrivacyDotViewController.setNextViewState(CoverViewState.copy$default(coverPrivacyDotViewController.nextViewState, false, false, false, false, i4, i5, selectDesignatedCorner, null, 143));
                    }
                }
            }
            if (!screenDecorations.mCoverPendingConfigChange && i4 != (i2 = screenDecorations.mCoverRotation)) {
                LogBuffer.log$default(screenDecorations.mLogger.logBuffer, "ScreenDecorationsLog", LogLevel.DEBUG, ScreenDecorations$CoverRestartingPreDrawListener$$ExternalSyntheticOutline0.m("updateCoverRotation, ", i2, " -> ", i4), null, 8, null);
                screenDecorations.mCoverRotation = i4;
                if (screenDecorations.hasCoverOverlay()) {
                    screenDecorations.mCoverOverlay.onReloadResAndMeasure(null, 0, screenDecorations.mCoverRotation, screenDecorations.mTintColor, screenDecorations.mCoverDisplayInfo.uniqueId);
                }
            }
            this.mView.invalidate();
            return false;
        }

        private CoverRestartingPreDrawListener(View view, int i) {
            this.mView = view;
            this.mTargetRotation = i;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class CoverValidatingPreDrawListener implements ViewTreeObserver.OnPreDrawListener {
        public final View mView;

        public CoverValidatingPreDrawListener(View view) {
            this.mView = view;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public final boolean onPreDraw() {
            ScreenDecorations.this.mCoverWindowContext.getDisplay().getDisplayInfo(ScreenDecorations.this.mCoverDisplayInfo);
            ScreenDecorations screenDecorations = ScreenDecorations.this;
            if (screenDecorations.mCoverDisplayInfo.rotation != screenDecorations.mCoverRotation && !screenDecorations.mCoverPendingConfigChange) {
                this.mView.invalidate();
                return false;
            }
            return true;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public class DisplayCutoutView extends DisplayCutoutBaseView {
        public final List mBounds;
        public int mColor;
        public final int mInitialPosition;
        public int mPosition;
        public int mRotation;
        public final Rect mTotalBounds;

        public DisplayCutoutView(Context context, int i) {
            super(context);
            this.mBounds = new ArrayList();
            this.mTotalBounds = new Rect();
            this.mColor = EmergencyPhoneWidget.BG_COLOR;
            this.mInitialPosition = i;
            this.paint.setColor(EmergencyPhoneWidget.BG_COLOR);
            this.paint.setStyle(Paint.Style.FILL);
            this.paintForCameraProtection.setColor(this.mColor);
            this.paintForCameraProtection.setStyle(Paint.Style.FILL_AND_STROKE);
            this.paintForCameraProtection.setStrokeWidth(getResources().getDimensionPixelSize(R.dimen.camera_protection_stroke_width));
            SemWindowManager semWindowManager = SemWindowManager.getInstance();
            Point point = new Point();
            semWindowManager.getInitialDisplaySize(point);
            this.initialDisplayWidth = point.x;
            this.initialDisplayDensity = semWindowManager.getInitialDensity();
        }

        public static void boundsFromDirection(int i, Rect rect, DisplayCutout displayCutout) {
            if (i != 3) {
                if (i != 5) {
                    if (i != 48) {
                        if (i != 80) {
                            rect.setEmpty();
                            return;
                        } else {
                            rect.set(displayCutout.getBoundingRectBottom());
                            return;
                        }
                    }
                    rect.set(displayCutout.getBoundingRectTop());
                    return;
                }
                rect.set(displayCutout.getBoundingRectRight());
                return;
            }
            rect.set(displayCutout.getBoundingRectLeft());
        }

        public final int getGravity(DisplayCutout displayCutout) {
            int i = this.mPosition;
            if (i == 0) {
                if (!displayCutout.getBoundingRectLeft().isEmpty()) {
                    return 3;
                }
                return 0;
            }
            if (i == 1) {
                if (!displayCutout.getBoundingRectTop().isEmpty()) {
                    return 48;
                }
                return 0;
            }
            if (i == 3) {
                if (!displayCutout.getBoundingRectBottom().isEmpty()) {
                    return 80;
                }
                return 0;
            }
            if (i == 2 && !displayCutout.getBoundingRectRight().isEmpty()) {
                return 5;
            }
            return 0;
        }

        @Override // android.view.View
        public void onMeasure(int i, int i2) {
            if (((ArrayList) this.mBounds).isEmpty()) {
                super.onMeasure(i, i2);
                return;
            }
            if (this.showProtection) {
                this.mTotalBounds.set(this.mBoundingRect);
                Rect rect = this.mTotalBounds;
                RectF rectF = this.protectionRect;
                rect.union((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
                setMeasuredDimension(View.resolveSizeAndState(this.mTotalBounds.width(), i, 0), View.resolveSizeAndState(this.mTotalBounds.height(), i2, 0));
                return;
            }
            setMeasuredDimension(View.resolveSizeAndState(this.mBoundingRect.width(), i, 0), View.resolveSizeAndState(this.mBoundingRect.height(), i2, 0));
        }

        public void setColor(int i) {
            if (i == this.mColor) {
                return;
            }
            this.mColor = i;
            this.paint.setColor(i);
            this.paintForCameraProtection.setColor(this.mColor);
            invalidate();
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x0156  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x01c5  */
        /* JADX WARN: Removed duplicated region for block: B:36:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:40:0x01be  */
        /* JADX WARN: Removed duplicated region for block: B:50:0x0097  */
        @Override // com.android.systemui.DisplayCutoutBaseView
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void updateCutout() {
            /*
                Method dump skipped, instructions count: 463
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.ScreenDecorations.DisplayCutoutView.updateCutout():void");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class RestartingPreDrawListener implements ViewTreeObserver.OnPreDrawListener {
        public final Display.Mode mTargetDisplayMode;
        public final int mTargetRotation;
        public final View mView;

        public /* synthetic */ RestartingPreDrawListener(ScreenDecorations screenDecorations, View view, int i, int i2, Display.Mode mode, int i3) {
            this(view, i, i2, mode);
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public final boolean onPreDraw() {
            this.mView.getViewTreeObserver().removeOnPreDrawListener(this);
            int i = this.mTargetRotation;
            ScreenDecorations screenDecorations = ScreenDecorations.this;
            if (i == screenDecorations.mRotation && !ScreenDecorations.displayModeChanged(screenDecorations.mDisplayMode, this.mTargetDisplayMode)) {
                return true;
            }
            ScreenDecorations screenDecorations2 = ScreenDecorations.this;
            screenDecorations2.mPendingConfigChange = false;
            screenDecorations2.updateConfiguration();
            this.mView.invalidate();
            return false;
        }

        private RestartingPreDrawListener(View view, int i, int i2, Display.Mode mode) {
            this.mView = view;
            this.mTargetRotation = i2;
            this.mTargetDisplayMode = mode;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class ValidatingPreDrawListener implements ViewTreeObserver.OnPreDrawListener {
        public final View mView;

        public ValidatingPreDrawListener(View view) {
            this.mView = view;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public final boolean onPreDraw() {
            ScreenDecorations.this.mContext.getDisplay().getDisplayInfo(ScreenDecorations.this.mDisplayInfo);
            DisplayInfo displayInfo = ScreenDecorations.this.mDisplayInfo;
            int i = displayInfo.rotation;
            Display.Mode mode = displayInfo.getMode();
            ScreenDecorations screenDecorations = ScreenDecorations.this;
            if ((i != screenDecorations.mRotation || ScreenDecorations.displayModeChanged(screenDecorations.mDisplayMode, mode)) && !ScreenDecorations.this.mPendingConfigChange) {
                this.mView.invalidate();
                return false;
            }
            return true;
        }
    }

    static {
        boolean z = SystemProperties.getBoolean("debug.screenshot_rounded_corners", false);
        DEBUG_SCREENSHOT_ROUNDED_CORNERS = z;
        DEBUG_COLOR = z;
        DISPLAY_CUTOUT_IDS = new int[]{R.id.display_cutout, R.id.display_cutout_left, R.id.display_cutout_right, R.id.display_cutout_bottom};
        DEBUG_PRIVACY_INDICATOR = DeviceType.isEngOrUTBinary();
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.systemui.ScreenDecorations$$ExternalSyntheticLambda2] */
    /* JADX WARN: Type inference failed for: r2v1, types: [com.android.systemui.ScreenDecorations$1] */
    /* JADX WARN: Type inference failed for: r2v5, types: [com.android.systemui.ScreenDecorations$$ExternalSyntheticLambda2] */
    public ScreenDecorations(Context context, Executor executor, SecureSettings secureSettings, TunerService tunerService, UserTracker userTracker, DisplayTracker displayTracker, PrivacyDotViewController privacyDotViewController, ThreadFactory threadFactory, PrivacyDotDecorProviderFactory privacyDotDecorProviderFactory, FaceScanningProviderFactory faceScanningProviderFactory, ScreenDecorationsLogger screenDecorationsLogger, AuthController authController, SettingsHelper settingsHelper, CoverPrivacyDotViewController coverPrivacyDotViewController, IndicatorCutoutUtil indicatorCutoutUtil, IndicatorGardenPresenter indicatorGardenPresenter) {
        final int i = 0;
        this.mAODStateSettingsCallback = new SettingsHelper.OnChangedCallback(this) { // from class: com.android.systemui.ScreenDecorations$$ExternalSyntheticLambda2
            public final /* synthetic */ ScreenDecorations f$0;

            {
                this.f$0 = this;
            }

            @Override // com.android.systemui.util.SettingsHelper.OnChangedCallback
            public final void onChanged(Uri uri) {
                boolean z;
                final View view;
                int i2 = i;
                ScreenDecorations screenDecorations = this.f$0;
                switch (i2) {
                    case 0:
                        screenDecorations.getClass();
                        if (uri.equals(Settings.System.getUriFor("aod_show_state")) && screenDecorations.hasCoverOverlay()) {
                            CoverRoundedCornerDecorProviderFactory coverRoundedCornerDecorProviderFactory = screenDecorations.mCoverRoundedCornerFactory;
                            final int i3 = 0;
                            if (coverRoundedCornerDecorProviderFactory == null) {
                                z = false;
                            } else {
                                z = coverRoundedCornerDecorProviderFactory.hasProviders;
                            }
                            if (z && (view = screenDecorations.mCoverOverlay.getView(R.id.rounded_corner_cover)) != null) {
                                if (screenDecorations.mSettingsHelper.isAODShown() && screenDecorations.mTintColor == -1) {
                                    screenDecorations.mExecutor.execute(new Runnable() { // from class: com.android.systemui.ScreenDecorations$$ExternalSyntheticLambda5
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            switch (i3) {
                                                case 0:
                                                    view.setVisibility(4);
                                                    return;
                                                default:
                                                    view.setVisibility(0);
                                                    return;
                                            }
                                        }
                                    });
                                    return;
                                } else {
                                    if (view.getVisibility() != 0) {
                                        final int i4 = 1;
                                        screenDecorations.mExecutor.execute(new Runnable() { // from class: com.android.systemui.ScreenDecorations$$ExternalSyntheticLambda5
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                switch (i4) {
                                                    case 0:
                                                        view.setVisibility(4);
                                                        return;
                                                    default:
                                                        view.setVisibility(0);
                                                        return;
                                                }
                                            }
                                        });
                                        return;
                                    }
                                    return;
                                }
                            }
                            return;
                        }
                        return;
                    default:
                        screenDecorations.getClass();
                        if (uri.equals(Settings.Global.getUriFor("fill_udc_display_cutout"))) {
                            Log.d("ScreenDecorations", uri.toString() + " changed");
                            screenDecorations.updateFillUDCDisplayCutout();
                            return;
                        }
                        return;
                }
            }
        };
        final int i2 = 1;
        this.mFillUDCSettingsCallback = new SettingsHelper.OnChangedCallback(this) { // from class: com.android.systemui.ScreenDecorations$$ExternalSyntheticLambda2
            public final /* synthetic */ ScreenDecorations f$0;

            {
                this.f$0 = this;
            }

            @Override // com.android.systemui.util.SettingsHelper.OnChangedCallback
            public final void onChanged(Uri uri) {
                boolean z;
                final View view;
                int i22 = i2;
                ScreenDecorations screenDecorations = this.f$0;
                switch (i22) {
                    case 0:
                        screenDecorations.getClass();
                        if (uri.equals(Settings.System.getUriFor("aod_show_state")) && screenDecorations.hasCoverOverlay()) {
                            CoverRoundedCornerDecorProviderFactory coverRoundedCornerDecorProviderFactory = screenDecorations.mCoverRoundedCornerFactory;
                            final int i3 = 0;
                            if (coverRoundedCornerDecorProviderFactory == null) {
                                z = false;
                            } else {
                                z = coverRoundedCornerDecorProviderFactory.hasProviders;
                            }
                            if (z && (view = screenDecorations.mCoverOverlay.getView(R.id.rounded_corner_cover)) != null) {
                                if (screenDecorations.mSettingsHelper.isAODShown() && screenDecorations.mTintColor == -1) {
                                    screenDecorations.mExecutor.execute(new Runnable() { // from class: com.android.systemui.ScreenDecorations$$ExternalSyntheticLambda5
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            switch (i3) {
                                                case 0:
                                                    view.setVisibility(4);
                                                    return;
                                                default:
                                                    view.setVisibility(0);
                                                    return;
                                            }
                                        }
                                    });
                                    return;
                                } else {
                                    if (view.getVisibility() != 0) {
                                        final int i4 = 1;
                                        screenDecorations.mExecutor.execute(new Runnable() { // from class: com.android.systemui.ScreenDecorations$$ExternalSyntheticLambda5
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                switch (i4) {
                                                    case 0:
                                                        view.setVisibility(4);
                                                        return;
                                                    default:
                                                        view.setVisibility(0);
                                                        return;
                                                }
                                            }
                                        });
                                        return;
                                    }
                                    return;
                                }
                            }
                            return;
                        }
                        return;
                    default:
                        screenDecorations.getClass();
                        if (uri.equals(Settings.Global.getUriFor("fill_udc_display_cutout"))) {
                            Log.d("ScreenDecorations", uri.toString() + " changed");
                            screenDecorations.updateFillUDCDisplayCutout();
                            return;
                        }
                        return;
                }
            }
        };
        this.mContext = context;
        this.mMainExecutor = executor;
        this.mSecureSettings = secureSettings;
        this.mTunerService = tunerService;
        this.mUserTracker = userTracker;
        this.mDisplayTracker = displayTracker;
        this.mDotViewController = privacyDotViewController;
        this.mThreadFactory = threadFactory;
        this.mDotFactory = privacyDotDecorProviderFactory;
        this.mFaceScanningFactory = faceScanningProviderFactory;
        this.mLogger = screenDecorationsLogger;
        this.mAuthController = authController;
        this.mSettingsHelper = settingsHelper;
        this.mCoverDotViewController = coverPrivacyDotViewController;
        this.mIndicatorCutoutUtil = indicatorCutoutUtil;
        if (BasicRune.STATUS_LAYOUT_SHOW_ICONS_IN_UDC) {
            this.mIndicatorGardenPresenter = indicatorGardenPresenter;
        }
    }

    public static boolean displayModeChanged(Display.Mode mode, Display.Mode mode2) {
        if (mode == null || mode.getPhysicalWidth() != mode2.getPhysicalWidth() || mode.getPhysicalHeight() != mode2.getPhysicalHeight()) {
            return true;
        }
        return false;
    }

    public static int getBoundPositionFromRotation(int i, int i2) {
        int i3 = i - i2;
        if (i3 < 0) {
            return i3 + 4;
        }
        return i3;
    }

    public static WindowManager.LayoutParams getWindowLayoutBaseParams() {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(2024, 545259832, -3);
        int i = layoutParams.privateFlags | 80 | QuickStepContract.SYSUI_STATE_KNOX_HARD_KEY_INTENT;
        layoutParams.privateFlags = i;
        if (!DEBUG_SCREENSHOT_ROUNDED_CORNERS) {
            layoutParams.privateFlags = i | QuickStepContract.SYSUI_STATE_IME_SWITCHER_SHOWING;
        }
        layoutParams.layoutInDisplayCutoutMode = 3;
        layoutParams.setFitInsetsTypes(0);
        layoutParams.privateFlags |= 16777216;
        return layoutParams;
    }

    public static String getWindowTitleByPos(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i == 3) {
                        return "ScreenDecorOverlayBottom";
                    }
                    throw new IllegalArgumentException(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("unknown bound position: ", i));
                }
                return "ScreenDecorOverlayRight";
            }
            return "ScreenDecorOverlay";
        }
        return "ScreenDecorOverlayLeft";
    }

    @Override // com.android.systemui.CoreStartable, com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        boolean z;
        boolean z2;
        boolean z3;
        String str;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        printWriter.println("ScreenDecorations state:");
        PrintWriter asIndenting = DumpUtilsKt.asIndenting(printWriter);
        asIndenting.increaseIndent();
        StringBuilder sb = new StringBuilder("DEBUG_DISABLE_SCREEN_DECORATIONS:");
        boolean z8 = DEBUG_DISABLE_SCREEN_DECORATIONS;
        sb.append(z8);
        asIndenting.println(sb.toString());
        if (z8) {
            return;
        }
        asIndenting.println("mIsPrivacyDotEnabled:" + this.mDotFactory.getHasProviders());
        asIndenting.println("shouldOptimizeOverlayVisibility:false");
        FaceScanningProviderFactory faceScanningProviderFactory = this.mFaceScanningFactory;
        boolean hasProviders = faceScanningProviderFactory.getHasProviders();
        DisplayCutoutBaseView$$ExternalSyntheticOutline0.m("supportsShowingFaceScanningAnim:", hasProviders, asIndenting);
        boolean z9 = true;
        if (hasProviders) {
            asIndenting.increaseIndent();
            StringBuilder sb2 = new StringBuilder("canShowFaceScanningAnim:");
            boolean hasProviders2 = faceScanningProviderFactory.getHasProviders();
            KeyguardUpdateMonitor keyguardUpdateMonitor = faceScanningProviderFactory.keyguardUpdateMonitor;
            if (hasProviders2 && keyguardUpdateMonitor.mIsFaceEnrolled) {
                z5 = true;
            } else {
                z5 = false;
            }
            sb2.append(z5);
            asIndenting.println(sb2.toString());
            StringBuilder sb3 = new StringBuilder("shouldShowFaceScanningAnim (at time dump was taken):");
            if (faceScanningProviderFactory.getHasProviders() && keyguardUpdateMonitor.mIsFaceEnrolled) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (z6 && (keyguardUpdateMonitor.isFaceDetectionRunning() || faceScanningProviderFactory.authController.isShowing())) {
                z7 = true;
            } else {
                z7 = false;
            }
            sb3.append(z7);
            asIndenting.println(sb3.toString());
            asIndenting.decreaseIndent();
        }
        FaceScanningOverlay faceScanningOverlay = (FaceScanningOverlay) getOverlayView(this.mFaceScanningViewId);
        if (faceScanningOverlay != null) {
            faceScanningOverlay.dump(asIndenting);
        }
        asIndenting.println("mRotation:" + this.mRotation);
        asIndenting.println("mPendingConfigChange:" + this.mPendingConfigChange);
        if (hasCoverOverlay()) {
            StringBuilder sb4 = new StringBuilder("hasCoverRoundedCorners:");
            CoverRoundedCornerDecorProviderFactory coverRoundedCornerDecorProviderFactory = this.mCoverRoundedCornerFactory;
            if (coverRoundedCornerDecorProviderFactory == null) {
                z4 = false;
            } else {
                z4 = coverRoundedCornerDecorProviderFactory.hasProviders;
            }
            sb4.append(z4);
            asIndenting.println(sb4.toString());
            asIndenting.println("isCoverPrivacyDotEnabled:" + isCoverPrivacyDotEnabled());
            asIndenting.println("mCoverPendingConfigChange:" + this.mPendingConfigChange);
            asIndenting.println("mCoverRotation:" + this.mCoverRotation);
        }
        if (this.mHwcScreenDecorationSupport != null) {
            asIndenting.increaseIndent();
            asIndenting.println("mHwcScreenDecorationSupport:");
            asIndenting.increaseIndent();
            asIndenting.println("format=" + PixelFormat.formatToString(this.mHwcScreenDecorationSupport.format));
            StringBuilder sb5 = new StringBuilder("alphaInterpretation=");
            int i = this.mHwcScreenDecorationSupport.alphaInterpretation;
            if (i != 0) {
                if (i != 1) {
                    str = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("Unknown: ", i);
                } else {
                    str = "MASK";
                }
            } else {
                str = "COVERAGE";
            }
            sb5.append(str);
            asIndenting.println(sb5.toString());
            asIndenting.decreaseIndent();
            asIndenting.decreaseIndent();
        } else {
            asIndenting.increaseIndent();
            printWriter.println("mHwcScreenDecorationSupport: null");
            asIndenting.decreaseIndent();
        }
        if (this.mScreenDecorHwcLayer != null) {
            asIndenting.increaseIndent();
            this.mScreenDecorHwcLayer.dump(asIndenting);
            asIndenting.decreaseIndent();
        } else {
            asIndenting.println("mScreenDecorHwcLayer: null");
        }
        if (this.mOverlays != null) {
            StringBuilder sb6 = new StringBuilder("mOverlays(left,top,right,bottom)=(");
            if (this.mOverlays[0] != null) {
                z = true;
            } else {
                z = false;
            }
            sb6.append(z);
            sb6.append(",");
            if (this.mOverlays[1] != null) {
                z2 = true;
            } else {
                z2 = false;
            }
            sb6.append(z2);
            sb6.append(",");
            if (this.mOverlays[2] != null) {
                z3 = true;
            } else {
                z3 = false;
            }
            sb6.append(z3);
            sb6.append(",");
            if (this.mOverlays[3] == null) {
                z9 = false;
            }
            sb6.append(z9);
            sb6.append(")");
            asIndenting.println(sb6.toString());
            for (int i2 = 0; i2 < 4; i2++) {
                OverlayWindow overlayWindow = this.mOverlays[i2];
                if (overlayWindow != null) {
                    overlayWindow.dump(printWriter, getWindowTitleByPos(i2));
                }
            }
        }
        if (hasCoverOverlay()) {
            this.mCoverOverlay.dump(printWriter, getCoverWindowLayoutParams().getTitle().toString());
        }
        this.mRoundedCornerResDelegate.dump(printWriter, strArr);
        if (hasCoverOverlay()) {
            CoverPrivacyDotViewController coverPrivacyDotViewController = this.mCoverDotViewController;
            coverPrivacyDotViewController.getClass();
            printWriter.println("CoverPrivacyDotViewController state:");
            printWriter.println("  currentViewState=" + coverPrivacyDotViewController.currentViewState);
        }
    }

    public final View getCoverOverlayView(int i) {
        View view;
        OverlayWindow overlayWindow = this.mCoverOverlay;
        if (overlayWindow == null || (view = overlayWindow.getView(i)) == null) {
            return null;
        }
        return view;
    }

    public WindowManager.LayoutParams getCoverWindowLayoutParams() {
        WindowManager.LayoutParams windowLayoutBaseParams = getWindowLayoutBaseParams();
        windowLayoutBaseParams.width = -1;
        windowLayoutBaseParams.height = -1;
        windowLayoutBaseParams.setTitle("ScreenDecorOverlayCover");
        windowLayoutBaseParams.gravity = 17;
        return windowLayoutBaseParams;
    }

    public final boolean getDisplayAspectRatioChanged() {
        this.mContext.getDisplay().getDisplayInfo(this.mDisplayInfo);
        if (DisplayUtils.getMaximumResolutionDisplayMode(this.mDisplayInfo.supportedModes) == null || Float.compare(this.mDisplayInfo.getNaturalWidth() / this.mDisplayInfo.getNaturalHeight(), r0.getPhysicalWidth() / r0.getPhysicalHeight()) == 0) {
            return false;
        }
        return true;
    }

    public View getOverlayView(int i) {
        View view;
        OverlayWindow[] overlayWindowArr = this.mOverlays;
        if (overlayWindowArr == null) {
            return null;
        }
        for (OverlayWindow overlayWindow : overlayWindowArr) {
            if (overlayWindow != null && (view = overlayWindow.getView(i)) != null) {
                return view;
            }
        }
        return null;
    }

    public float getPhysicalPixelDisplaySizeRatio() {
        this.mContext.getDisplay().getDisplayInfo(this.mDisplayInfo);
        Display.Mode maximumResolutionDisplayMode = DisplayUtils.getMaximumResolutionDisplayMode(this.mDisplayInfo.supportedModes);
        if (maximumResolutionDisplayMode == null) {
            return 1.0f;
        }
        return DisplayUtils.getPhysicalPixelDisplaySizeRatio(maximumResolutionDisplayMode.getPhysicalWidth(), maximumResolutionDisplayMode.getPhysicalHeight(), this.mDisplayInfo.getNaturalWidth(), this.mDisplayInfo.getNaturalHeight());
    }

    public final List getProviders(boolean z) {
        ArrayList arrayList = new ArrayList(this.mDotFactory.getProviders());
        arrayList.addAll(this.mFaceScanningFactory.getProviders());
        if (!z) {
            arrayList.addAll(this.mRoundedCornerFactory.getProviders());
            arrayList.addAll(this.mCutoutFactory.getProviders());
        }
        return arrayList;
    }

    public WindowManager.LayoutParams getWindowLayoutParams(int i) {
        int i2;
        WindowManager.LayoutParams windowLayoutBaseParams = getWindowLayoutBaseParams();
        int boundPositionFromRotation = getBoundPositionFromRotation(i, this.mRotation);
        int i3 = -2;
        int i4 = 3;
        if (boundPositionFromRotation != 1 && boundPositionFromRotation != 3) {
            i2 = -2;
        } else {
            i2 = -1;
        }
        windowLayoutBaseParams.width = i2;
        int boundPositionFromRotation2 = getBoundPositionFromRotation(i, this.mRotation);
        if (boundPositionFromRotation2 != 1 && boundPositionFromRotation2 != 3) {
            i3 = -1;
        }
        windowLayoutBaseParams.height = i3;
        windowLayoutBaseParams.setTitle(getWindowTitleByPos(i));
        int boundPositionFromRotation3 = getBoundPositionFromRotation(i, this.mRotation);
        if (boundPositionFromRotation3 != 0) {
            if (boundPositionFromRotation3 != 1) {
                if (boundPositionFromRotation3 != 2) {
                    if (boundPositionFromRotation3 == 3) {
                        i4 = 80;
                    } else {
                        throw new IllegalArgumentException(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("unknown bound position: ", i));
                    }
                } else {
                    i4 = 5;
                }
            } else {
                i4 = 48;
            }
        }
        windowLayoutBaseParams.gravity = i4;
        return windowLayoutBaseParams;
    }

    public boolean hasCoverOverlay() {
        if (this.mCoverOverlay != null) {
            return true;
        }
        return false;
    }

    public boolean hasOverlays() {
        if (this.mOverlays == null) {
            return false;
        }
        for (int i = 0; i < 4; i++) {
            if (this.mOverlays[i] != null) {
                return true;
            }
        }
        this.mOverlays = null;
        return false;
    }

    public boolean hasSameProviders(List<DecorProvider> list) {
        ArrayList arrayList = new ArrayList();
        OverlayWindow[] overlayWindowArr = this.mOverlays;
        if (overlayWindowArr != null) {
            for (OverlayWindow overlayWindow : overlayWindowArr) {
                if (overlayWindow != null) {
                    arrayList.addAll(CollectionsKt___CollectionsKt.toList(((LinkedHashMap) overlayWindow.viewProviderMap).keySet()));
                }
            }
        }
        if (arrayList.size() != list.size()) {
            return false;
        }
        Iterator<DecorProvider> it = list.iterator();
        while (it.hasNext()) {
            if (!arrayList.contains(Integer.valueOf(it.next().getViewId()))) {
                return false;
            }
        }
        return true;
    }

    public void hideCameraProtection() {
        FaceScanningOverlay faceScanningOverlay = (FaceScanningOverlay) getOverlayView(this.mFaceScanningViewId);
        if (faceScanningOverlay != null) {
            faceScanningOverlay.hideOverlayRunnable = new ScreenDecorations$$ExternalSyntheticLambda0(this, faceScanningOverlay, 1);
            faceScanningOverlay.enableShowProtection(false);
        }
        ScreenDecorHwcLayer screenDecorHwcLayer = this.mScreenDecorHwcLayer;
        if (screenDecorHwcLayer != null) {
            screenDecorHwcLayer.enableShowProtection(false);
            return;
        }
        int i = 0;
        for (int i2 : DISPLAY_CUTOUT_IDS) {
            View overlayView = getOverlayView(i2);
            if (overlayView instanceof DisplayCutoutView) {
                i++;
                ((DisplayCutoutView) overlayView).enableShowProtection(false);
            }
        }
        if (i == 0) {
            Log.e("ScreenDecorations", "CutoutView not initialized hideCameraProtection");
        }
    }

    public final boolean isCoverPrivacyDotEnabled() {
        return this.mContext.getResources().getBoolean(R.bool.config_enableCoverScreenPrivacyDot);
    }

    @Override // com.android.systemui.CoreStartable
    public final void onConfigurationChanged(Configuration configuration) {
        if (DEBUG_DISABLE_SCREEN_DECORATIONS) {
            Log.i("ScreenDecorations", "ScreenDecorations is disabled");
        } else {
            this.mExecutor.execute(new ScreenDecorations$$ExternalSyntheticLambda1(this, 0));
        }
    }

    @Override // com.android.systemui.tuner.TunerService.Tunable
    public final void onTuningChanged(final String str, final String str2) {
        if (DEBUG_DISABLE_SCREEN_DECORATIONS) {
            Log.i("ScreenDecorations", "ScreenDecorations is disabled");
        } else {
            this.mExecutor.execute(new Runnable() { // from class: com.android.systemui.ScreenDecorations$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    ScreenDecorations screenDecorations = ScreenDecorations.this;
                    String str3 = str;
                    String str4 = str2;
                    if (screenDecorations.mOverlays != null && "sysui_rounded_size".equals(str3)) {
                        Trace.beginSection("ScreenDecorations#onTuningChanged");
                        try {
                            int parseInt = Integer.parseInt(str4);
                            RoundedCornerResDelegate roundedCornerResDelegate = screenDecorations.mRoundedCornerResDelegate;
                            Integer valueOf = Integer.valueOf(parseInt);
                            if (!Intrinsics.areEqual(roundedCornerResDelegate.tuningSizeFactor, valueOf)) {
                                roundedCornerResDelegate.tuningSizeFactor = valueOf;
                                roundedCornerResDelegate.reloadMeasures();
                            }
                        } catch (NumberFormatException unused) {
                            RoundedCornerResDelegate roundedCornerResDelegate2 = screenDecorations.mRoundedCornerResDelegate;
                            if (!Intrinsics.areEqual(roundedCornerResDelegate2.tuningSizeFactor, null)) {
                                roundedCornerResDelegate2.tuningSizeFactor = null;
                                roundedCornerResDelegate2.reloadMeasures();
                            }
                        }
                        screenDecorations.updateOverlayProviderViews(new Integer[]{Integer.valueOf(R.id.rounded_corner_top_left), Integer.valueOf(R.id.rounded_corner_top_right), Integer.valueOf(R.id.rounded_corner_bottom_left), Integer.valueOf(R.id.rounded_corner_bottom_right)});
                        screenDecorations.updateHwLayerRoundedCornerExistAndSize();
                        Trace.endSection();
                    }
                }
            });
        }
    }

    public void setSize(View view, Size size) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.width = size.getWidth();
        layoutParams.height = size.getHeight();
        view.setLayoutParams(layoutParams);
    }

    /* JADX WARN: Code restructure failed: missing block: B:157:0x025a, code lost:
    
        if (r11.shouldFillUDCDisplayCutout == false) goto L119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x025c, code lost:
    
        if (r10 != 1) goto L119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:208:0x03b0, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(r3, r6) != false) goto L211;
     */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0267  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x028f  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x032e A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void setupDecorations() {
        /*
            Method dump skipped, instructions count: 1267
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.ScreenDecorations.setupDecorations():void");
    }

    public void showCameraProtection(Path path, Rect rect) {
        boolean z;
        boolean z2;
        FaceScanningProviderFactory faceScanningProviderFactory = this.mFaceScanningFactory;
        boolean hasProviders = faceScanningProviderFactory.getHasProviders();
        KeyguardUpdateMonitor keyguardUpdateMonitor = faceScanningProviderFactory.keyguardUpdateMonitor;
        if (hasProviders && keyguardUpdateMonitor.mIsFaceEnrolled) {
            z = true;
        } else {
            z = false;
        }
        if (z && (keyguardUpdateMonitor.isFaceDetectionRunning() || faceScanningProviderFactory.authController.isShowing())) {
            z2 = true;
        } else {
            z2 = false;
        }
        ScreenDecorationsLogger screenDecorationsLogger = this.mLogger;
        if (z2) {
            int i = this.mFaceScanningViewId;
            DisplayCutoutView displayCutoutView = (DisplayCutoutView) getOverlayView(i);
            if (displayCutoutView != null) {
                screenDecorationsLogger.cameraProtectionBoundsForScanningOverlay(rect);
                displayCutoutView.setProtection(path, rect);
                displayCutoutView.enableShowProtection(true);
                updateOverlayWindowVisibilityIfViewExists(displayCutoutView.findViewById(i));
                return;
            }
        }
        if (this.mScreenDecorHwcLayer != null) {
            screenDecorationsLogger.hwcLayerCameraProtectionBounds(rect);
            this.mScreenDecorHwcLayer.setProtection(path, rect);
            this.mScreenDecorHwcLayer.enableShowProtection(true);
            return;
        }
        int i2 = 0;
        for (int i3 : DISPLAY_CUTOUT_IDS) {
            View overlayView = getOverlayView(i3);
            if (overlayView instanceof DisplayCutoutView) {
                i2++;
                screenDecorationsLogger.dcvCameraBounds(i3, rect);
                ((DisplayCutoutView) overlayView).enableShowProtection(true);
            }
        }
        if (i2 == 0) {
            LogBuffer.log$default(screenDecorationsLogger.logBuffer, "ScreenDecorationsLog", LogLevel.ERROR, "CutoutView not initialized showCameraProtection", null, 8, null);
        }
    }

    @Override // com.android.systemui.CoreStartable
    public final void start() {
        if (DEBUG_DISABLE_SCREEN_DECORATIONS) {
            Log.i("ScreenDecorations", "ScreenDecorations is disabled");
            return;
        }
        ThreadFactoryImpl threadFactoryImpl = (ThreadFactoryImpl) this.mThreadFactory;
        threadFactoryImpl.getClass();
        HandlerThread handlerThread = new HandlerThread("ScreenDecorations");
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper());
        this.mHandler = handler;
        threadFactoryImpl.getClass();
        ExecutorImpl executorImpl = new ExecutorImpl(handler.getLooper());
        this.mExecutor = executorImpl;
        executorImpl.execute(new ScreenDecorations$$ExternalSyntheticLambda1(this, 3));
        ExecutorImpl executorImpl2 = this.mExecutor;
        this.mDotViewController.uiExecutor = executorImpl2;
        Handler handler2 = this.mHandler;
        CoverPrivacyDotViewController coverPrivacyDotViewController = this.mCoverDotViewController;
        coverPrivacyDotViewController.uiExecutor = executorImpl2;
        coverPrivacyDotViewController.handler = handler2;
        this.mAuthController.addCallback(this.mAuthControllerCallback);
    }

    public final void updateColorInversion(int i) {
        int i2;
        if (i != 0) {
            i2 = -1;
        } else {
            i2 = EmergencyPhoneWidget.BG_COLOR;
        }
        this.mTintColor = i2;
        if (DEBUG_COLOR) {
            this.mTintColor = -65536;
        }
        updateOverlayProviderViews(new Integer[]{Integer.valueOf(this.mFaceScanningViewId), Integer.valueOf(R.id.display_cutout), Integer.valueOf(R.id.display_cutout_left), Integer.valueOf(R.id.display_cutout_right), Integer.valueOf(R.id.display_cutout_bottom), Integer.valueOf(R.id.rounded_corner_top_left), Integer.valueOf(R.id.rounded_corner_top_right), Integer.valueOf(R.id.rounded_corner_bottom_left), Integer.valueOf(R.id.rounded_corner_bottom_right)});
        Integer[] numArr = {Integer.valueOf(R.id.rounded_corner_cover)};
        if (hasCoverOverlay()) {
            this.mCoverOverlay.onReloadResAndMeasure(numArr, 0, this.mCoverRotation, this.mTintColor, this.mCoverDisplayInfo.uniqueId);
        }
    }

    public void updateConfiguration() {
        boolean z;
        boolean z2 = true;
        if (this.mHandler.getLooper().getThread() == Thread.currentThread()) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkState(z, "must call on " + this.mHandler.getLooper().getThread() + ", but was " + Thread.currentThread());
        this.mContext.getDisplay().getDisplayInfo(this.mDisplayInfo);
        int i = this.mDisplayInfo.rotation;
        if (this.mRotation != i) {
            this.mDotViewController.setNewRotation(i);
        }
        Display.Mode mode = this.mDisplayInfo.getMode();
        DisplayCutout displayCutout = this.mDisplayInfo.displayCutout;
        IndicatorCutoutUtil indicatorCutoutUtil = this.mIndicatorCutoutUtil;
        if (indicatorCutoutUtil.isUDCModel) {
            updateFillUDCDisplayCutout();
        }
        if (!this.mPendingConfigChange && (i != this.mRotation || displayModeChanged(this.mDisplayMode, mode) || !Objects.equals(displayCutout, this.mDisplayCutout))) {
            this.mRotation = i;
            this.mDisplayMode = mode;
            this.mDisplayCutout = displayCutout;
            RoundedCornerResDelegate roundedCornerResDelegate = this.mRoundedCornerResDelegate;
            float physicalPixelDisplaySizeRatio = getPhysicalPixelDisplaySizeRatio();
            if (roundedCornerResDelegate.physicalPixelDisplaySizeRatio != physicalPixelDisplaySizeRatio) {
                z2 = false;
            }
            if (!z2) {
                roundedCornerResDelegate.physicalPixelDisplaySizeRatio = physicalPixelDisplaySizeRatio;
                roundedCornerResDelegate.reloadMeasures();
            }
            RoundedCornerResDelegate roundedCornerResDelegate2 = this.mRoundedCornerResDelegate;
            boolean displayAspectRatioChanged = getDisplayAspectRatioChanged();
            if (roundedCornerResDelegate2.displayAspectRatioChanged != displayAspectRatioChanged) {
                roundedCornerResDelegate2.displayAspectRatioChanged = displayAspectRatioChanged;
                roundedCornerResDelegate2.reloadMeasures();
            }
            ScreenDecorHwcLayer screenDecorHwcLayer = this.mScreenDecorHwcLayer;
            if (screenDecorHwcLayer != null) {
                screenDecorHwcLayer.pendingConfigChange = false;
                screenDecorHwcLayer.updateConfiguration(this.mDisplayUniqueId);
                updateHwLayerRoundedCornerExistAndSize();
                updateHwLayerRoundedCornerDrawable();
            }
            updateLayoutParams();
            updateOverlayProviderViews(null);
        }
        FaceScanningOverlay faceScanningOverlay = (FaceScanningOverlay) getOverlayView(this.mFaceScanningViewId);
        if (faceScanningOverlay != null) {
            faceScanningOverlay.faceScanningAnimColor = Utils.getColorAttrDefaultColor(R.attr.wallpaperTextColorAccent, faceScanningOverlay.getContext(), 0);
        }
        if (indicatorCutoutUtil.isUDCModel) {
            updateFillUDCDisplayCutout();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0028  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateFillUDCDisplayCutout() {
        /*
            r5 = this;
            com.android.systemui.statusbar.phone.IndicatorCutoutUtil r0 = r5.mIndicatorCutoutUtil
            boolean r0 = r0.isUDCMainDisplay()
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L21
            com.android.systemui.util.SettingsHelper r0 = r5.mSettingsHelper
            com.android.systemui.util.SettingsHelper$ItemMap r0 = r0.mItemLists
            java.lang.String r3 = "fill_udc_display_cutout"
            com.android.systemui.util.SettingsHelper$Item r0 = r0.get(r3)
            int r0 = r0.getIntValue()
            if (r0 == 0) goto L1c
            r0 = r1
            goto L1d
        L1c:
            r0 = r2
        L1d:
            if (r0 == 0) goto L21
            r0 = r1
            goto L22
        L21:
            r0 = r2
        L22:
            com.android.systemui.decor.CutoutDecorProviderFactory r3 = r5.mCutoutFactory
            boolean r4 = r3.shouldFillUDCDisplayCutout
            if (r0 == r4) goto L34
            r3.shouldFillUDCDisplayCutout = r0
            android.os.Handler r3 = r5.mHandler
            com.android.systemui.ScreenDecorations$$ExternalSyntheticLambda3 r4 = new com.android.systemui.ScreenDecorations$$ExternalSyntheticLambda3
            r4.<init>(r5, r0, r2)
            r3.post(r4)
        L34:
            boolean r0 = com.android.systemui.BasicRune.STATUS_LAYOUT_SHOW_ICONS_IN_UDC
            if (r0 == 0) goto L4a
            boolean r0 = r5.blockUpdateStatusIconContainerLayout
            if (r0 != 0) goto L4a
            com.android.systemui.decor.CutoutDecorProviderFactory r0 = r5.mCutoutFactory
            boolean r0 = r0.shouldFillUDCDisplayCutout
            com.android.systemui.ScreenDecorations$$ExternalSyntheticLambda3 r2 = new com.android.systemui.ScreenDecorations$$ExternalSyntheticLambda3
            r2.<init>(r5, r0, r1)
            java.util.concurrent.Executor r5 = r5.mMainExecutor
            r5.execute(r2)
        L4a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.ScreenDecorations.updateFillUDCDisplayCutout():void");
    }

    public final void updateHwLayerRoundedCornerDrawable() {
        ScreenDecorHwcLayer screenDecorHwcLayer = this.mScreenDecorHwcLayer;
        if (screenDecorHwcLayer == null) {
            return;
        }
        RoundedCornerResDelegate roundedCornerResDelegate = this.mRoundedCornerResDelegate;
        Drawable drawable = roundedCornerResDelegate.topRoundedDrawable;
        Drawable drawable2 = roundedCornerResDelegate.bottomRoundedDrawable;
        if (drawable != null && drawable2 != null) {
            screenDecorHwcLayer.roundedCornerDrawableTop = drawable;
            screenDecorHwcLayer.roundedCornerDrawableBottom = drawable2;
            int i = screenDecorHwcLayer.roundedCornerTopSize;
            drawable.setBounds(0, 0, i, i);
            Drawable drawable3 = screenDecorHwcLayer.roundedCornerDrawableBottom;
            if (drawable3 != null) {
                int i2 = screenDecorHwcLayer.roundedCornerBottomSize;
                drawable3.setBounds(0, 0, i2, i2);
            }
            screenDecorHwcLayer.invalidate();
            screenDecorHwcLayer.invalidate();
        }
    }

    public final void updateHwLayerRoundedCornerExistAndSize() {
        ScreenDecorHwcLayer screenDecorHwcLayer = this.mScreenDecorHwcLayer;
        if (screenDecorHwcLayer == null) {
            return;
        }
        RoundedCornerResDelegate roundedCornerResDelegate = this.mRoundedCornerResDelegate;
        boolean z = roundedCornerResDelegate.hasTop;
        boolean z2 = roundedCornerResDelegate.hasBottom;
        int width = roundedCornerResDelegate.topRoundedSize.getWidth();
        int width2 = this.mRoundedCornerResDelegate.bottomRoundedSize.getWidth();
        if (screenDecorHwcLayer.hasTopRoundedCorner != z || screenDecorHwcLayer.hasBottomRoundedCorner != z2 || screenDecorHwcLayer.roundedCornerTopSize != width || screenDecorHwcLayer.roundedCornerBottomSize != width2) {
            screenDecorHwcLayer.hasTopRoundedCorner = z;
            screenDecorHwcLayer.hasBottomRoundedCorner = z2;
            screenDecorHwcLayer.roundedCornerTopSize = width;
            screenDecorHwcLayer.roundedCornerBottomSize = width2;
            Drawable drawable = screenDecorHwcLayer.roundedCornerDrawableTop;
            if (drawable != null) {
                drawable.setBounds(0, 0, width, width);
            }
            Drawable drawable2 = screenDecorHwcLayer.roundedCornerDrawableBottom;
            if (drawable2 != null) {
                int i = screenDecorHwcLayer.roundedCornerBottomSize;
                drawable2.setBounds(0, 0, i, i);
            }
            screenDecorHwcLayer.invalidate();
            screenDecorHwcLayer.requestLayout();
        }
    }

    public final void updateLayoutParams() {
        Trace.beginSection("ScreenDecorations#updateLayoutParams");
        ViewGroup viewGroup = this.mScreenDecorHwcWindow;
        if (viewGroup != null) {
            WindowManager windowManager = this.mWindowManager;
            WindowManager.LayoutParams windowLayoutBaseParams = getWindowLayoutBaseParams();
            windowLayoutBaseParams.width = -1;
            windowLayoutBaseParams.height = -1;
            windowLayoutBaseParams.setTitle("ScreenDecorHwcOverlay");
            windowLayoutBaseParams.gravity = 8388659;
            if (!DEBUG_COLOR) {
                windowLayoutBaseParams.setColorMode(4);
            }
            windowManager.updateViewLayout(viewGroup, windowLayoutBaseParams);
        }
        if (this.mOverlays != null) {
            for (int i = 0; i < 4; i++) {
                OverlayWindow overlayWindow = this.mOverlays[i];
                if (overlayWindow != null) {
                    this.mWindowManager.updateViewLayout(overlayWindow.rootView, getWindowLayoutParams(i));
                }
            }
        }
        Trace.endSection();
    }

    public void updateOverlayProviderViews(Integer[] numArr) {
        OverlayWindow[] overlayWindowArr = this.mOverlays;
        if (overlayWindowArr == null) {
            return;
        }
        this.mProviderRefreshToken++;
        for (OverlayWindow overlayWindow : overlayWindowArr) {
            if (overlayWindow != null) {
                overlayWindow.onReloadResAndMeasure(numArr, this.mProviderRefreshToken, this.mRotation, this.mTintColor, this.mDisplayUniqueId);
            }
        }
    }

    public void updateOverlayWindowVisibilityIfViewExists(View view) {
        if (view == null) {
            return;
        }
        this.mExecutor.execute(new ScreenDecorations$$ExternalSyntheticLambda0(this, view, 0));
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.ScreenDecorations$5, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass5 implements ComponentCallbacks {
        public AnonymousClass5() {
        }

        @Override // android.content.ComponentCallbacks
        public final void onConfigurationChanged(Configuration configuration) {
            if (ScreenDecorations.this.hasCoverOverlay()) {
                ScreenDecorations.this.mExecutor.execute(new ScreenDecorations$4$$ExternalSyntheticLambda0(this, 1));
            }
        }

        @Override // android.content.ComponentCallbacks
        public final void onLowMemory() {
        }
    }
}
