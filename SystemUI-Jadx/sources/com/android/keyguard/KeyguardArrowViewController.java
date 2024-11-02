package com.android.keyguard;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.SemWallpaperColors;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.provider.Settings;
import android.util.Log;
import android.util.Property;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.view.animation.PathInterpolator;
import android.widget.FrameLayout;
import com.android.keyguard.KeyguardSecSecurityContainer;
import com.android.keyguard.KeyguardSecSecurityContainerController;
import com.android.keyguard.KeyguardSecurityModel;
import com.android.systemui.Dependency;
import com.android.systemui.LsRune;
import com.android.systemui.R;
import com.android.systemui.keyguard.DisplayLifecycle;
import com.android.systemui.statusbar.phone.ConfigurationControllerImpl;
import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.util.DeviceState;
import com.android.systemui.util.DeviceType;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.util.SystemUIAnalytics;
import com.android.systemui.util.ViewController;
import com.android.systemui.wallpaper.WallpaperUtils;
import com.android.systemui.widget.SystemUIImageView;
import com.android.systemui.widget.SystemUIWidgetCallback;
import com.android.systemui.widget.SystemUIWidgetUtil;
import com.sec.ims.configuration.DATA;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyguardArrowViewController extends ViewController implements SystemUIWidgetCallback {
    public final ConfigurationController mConfigurationController;
    public final AnonymousClass2 mConfigurationListener;
    public int mCurrentPosition;
    public final AnonymousClass1 mDisplayLifecycleObserver;
    public boolean mIsFolderOpened;
    public boolean mIsTableArrowState;
    public boolean mIsTimerRunning;
    public final KeyguardArrowViewCallback mKeyguardArrowViewCallback;
    public final KeyguardUpdateMonitor mKeyguardUpdateMonitor;
    public int mLastOrientation;
    public long mLastUpdateTime;
    public final SystemUIImageView mLeftArrow;
    public final FrameLayout mLeftArrowContainer;
    public GestureDetector mLeftArrowGD;
    public final SystemUIImageView mRightArrow;
    public final FrameLayout mRightArrowContainer;
    public GestureDetector mRightArrowGD;
    public final KeyguardUpdateMonitorCallback mUpdateCallback;
    public final ViewMediatorCallback mViewMediatorCallback;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Factory {
        public final ConfigurationController mConfigurationController;
        public final KeyguardUpdateMonitor mKeyguardUpdateMonitor;
        public final KeyguardArrowView mView;
        public final ViewMediatorCallback mViewMediatorCallback;

        public Factory(KeyguardArrowView keyguardArrowView, ConfigurationController configurationController, KeyguardUpdateMonitor keyguardUpdateMonitor, ViewMediatorCallback viewMediatorCallback) {
            this.mView = keyguardArrowView;
            this.mConfigurationController = configurationController;
            this.mViewMediatorCallback = viewMediatorCallback;
            this.mKeyguardUpdateMonitor = keyguardUpdateMonitor;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class StatusLoggingTask extends AsyncTask {
        @Override // android.os.AsyncTask
        public final Object doInBackground(Object[] objArr) {
            String str;
            try {
                int bouncerOneHandPosition = ((SettingsHelper) Dependency.get(SettingsHelper.class)).getBouncerOneHandPosition();
                if (bouncerOneHandPosition != 0) {
                    if (bouncerOneHandPosition != 2) {
                        str = "2";
                    } else {
                        str = DATA.DM_FIELD_INDEX.PUBLIC_USER_ID;
                    }
                } else {
                    str = "1";
                }
                SystemUIAnalytics.sendEventLog(DATA.DM_FIELD_INDEX.VOLTE_DOMAIN_UI_SHOW, "1072", str);
                return null;
            } catch (Exception e) {
                Log.e("KeyguardArrowViewController", "StatusLoggingTask doInBackground = " + e.toString());
                return null;
            }
        }
    }

    /* renamed from: -$$Nest$mannounceForArrowAccessibility, reason: not valid java name */
    public static void m54$$Nest$mannounceForArrowAccessibility(KeyguardArrowViewController keyguardArrowViewController, boolean z) {
        int i;
        boolean isPatternView = keyguardArrowViewController.isPatternView();
        if (z) {
            if (isPatternView) {
                i = R.string.kg_arrow_move_pattern_area_left;
            } else {
                i = R.string.kg_arrow_move_pin_area_left;
            }
        } else if (isPatternView) {
            i = R.string.kg_arrow_move_pattern_area_right;
        } else {
            i = R.string.kg_arrow_move_pin_area_right;
        }
        ((KeyguardArrowView) keyguardArrowViewController.mView).announceForAccessibility(keyguardArrowViewController.getContext().getString(i));
    }

    /* JADX WARN: Type inference failed for: r3v2, types: [com.android.keyguard.KeyguardArrowViewController$1] */
    /* JADX WARN: Type inference failed for: r3v3, types: [com.android.keyguard.KeyguardArrowViewController$2] */
    public KeyguardArrowViewController(KeyguardArrowView keyguardArrowView, KeyguardArrowViewCallback keyguardArrowViewCallback, ConfigurationController configurationController, KeyguardUpdateMonitor keyguardUpdateMonitor, ViewMediatorCallback viewMediatorCallback) {
        super(keyguardArrowView);
        this.mCurrentPosition = 1;
        this.mIsTableArrowState = false;
        this.mLastUpdateTime = -1L;
        this.mIsFolderOpened = true;
        this.mDisplayLifecycleObserver = new DisplayLifecycle.Observer() { // from class: com.android.keyguard.KeyguardArrowViewController.1
            @Override // com.android.systemui.keyguard.DisplayLifecycle.Observer
            public final void onFolderStateChanged(boolean z) {
                KeyguardArrowViewController keyguardArrowViewController = KeyguardArrowViewController.this;
                keyguardArrowViewController.mIsFolderOpened = z;
                int bouncerOneHandPosition = ((SettingsHelper) Dependency.get(SettingsHelper.class)).getBouncerOneHandPosition();
                if (keyguardArrowViewController.mCurrentPosition != bouncerOneHandPosition) {
                    keyguardArrowViewController.mCurrentPosition = bouncerOneHandPosition;
                }
            }
        };
        this.mConfigurationListener = new ConfigurationController.ConfigurationListener() { // from class: com.android.keyguard.KeyguardArrowViewController.2
            @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
            public final void onConfigChanged(Configuration configuration) {
                boolean z;
                boolean z2 = LsRune.SECURITY_SUB_DISPLAY_LOCK;
                KeyguardArrowViewController keyguardArrowViewController = KeyguardArrowViewController.this;
                if (z2) {
                    SecurityUtils.initMainDisplaySize(keyguardArrowViewController.getContext());
                }
                int i = keyguardArrowViewController.mLastOrientation;
                if (i == 0) {
                    z = true;
                } else {
                    z = false;
                }
                int i2 = configuration.orientation;
                if (i != i2) {
                    keyguardArrowViewController.mLastOrientation = i2;
                    keyguardArrowViewController.updateArrowMargin();
                    if (!z) {
                        keyguardArrowViewController.updateSecurityViewPosition(false, true);
                    }
                }
            }
        };
        this.mUpdateCallback = new KeyguardUpdateMonitorCallback() { // from class: com.android.keyguard.KeyguardArrowViewController.3
            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onDualDarInnerLockScreenStateChanged(boolean z) {
                SystemUIImageView systemUIImageView;
                KeyguardArrowViewController keyguardArrowViewController = KeyguardArrowViewController.this;
                if (keyguardArrowViewController.mLeftArrow != null && (systemUIImageView = keyguardArrowViewController.mRightArrow) != null) {
                    if (SecurityUtils.isArrowViewSupported(keyguardArrowViewController.mKeyguardUpdateMonitor.getCurrentSecurityMode())) {
                        keyguardArrowViewController.updateArrowView();
                    } else {
                        keyguardArrowViewController.mLeftArrow.setVisibility(8);
                        systemUIImageView.setVisibility(8);
                    }
                }
            }

            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onKeyguardBouncerFullyShowingChanged(boolean z) {
                if (z) {
                    KeyguardArrowViewController.this.updateArrowMargin();
                }
            }

            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onLockModeChanged() {
                KeyguardArrowViewController keyguardArrowViewController = KeyguardArrowViewController.this;
                long lockoutAttemptDeadline = keyguardArrowViewController.mKeyguardUpdateMonitor.getLockoutAttemptDeadline();
                Log.d("KeyguardArrowViewController", "onLockModeChanged - deadline " + lockoutAttemptDeadline);
                if (lockoutAttemptDeadline > 0) {
                    keyguardArrowViewController.mIsTimerRunning = true;
                    keyguardArrowViewController.updateArrowVisibility(false);
                    KeyguardSecSecurityContainerController keyguardSecSecurityContainerController = KeyguardSecSecurityContainerController.this;
                    if (keyguardSecSecurityContainerController.mCurrentSecurityMode != KeyguardSecurityModel.SecurityMode.None) {
                        KeyguardSecSecurityContainer keyguardSecSecurityContainer = (KeyguardSecSecurityContainer) keyguardSecSecurityContainerController.mView;
                        if (keyguardSecSecurityContainer.mCurrentMode == 3) {
                            ((KeyguardSecSecurityContainer.SecViewMode) keyguardSecSecurityContainer.mViewMode).updateSecurityViewPosition(1, false);
                            return;
                        }
                        return;
                    }
                    return;
                }
                keyguardArrowViewController.mIsTimerRunning = false;
                if (keyguardArrowViewController.checkArrowVisibility()) {
                    keyguardArrowViewController.initArrowView();
                }
            }

            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onSecurityViewChanged(KeyguardSecurityModel.SecurityMode securityMode) {
                SystemUIImageView systemUIImageView;
                KeyguardArrowViewController keyguardArrowViewController = KeyguardArrowViewController.this;
                if (keyguardArrowViewController.mLeftArrow != null && (systemUIImageView = keyguardArrowViewController.mRightArrow) != null) {
                    if (SecurityUtils.isArrowViewSupported(securityMode)) {
                        keyguardArrowViewController.updateArrowView();
                        return;
                    }
                    keyguardArrowViewController.mLeftArrow.setVisibility(8);
                    systemUIImageView.setVisibility(8);
                    KeyguardSecSecurityContainerController keyguardSecSecurityContainerController = KeyguardSecSecurityContainerController.this;
                    if (keyguardSecSecurityContainerController.mCurrentSecurityMode != KeyguardSecurityModel.SecurityMode.None) {
                        KeyguardSecSecurityContainer keyguardSecSecurityContainer = (KeyguardSecSecurityContainer) keyguardSecSecurityContainerController.mView;
                        if (keyguardSecSecurityContainer.mCurrentMode == 3) {
                            ((KeyguardSecSecurityContainer.SecViewMode) keyguardSecSecurityContainer.mViewMode).updateSecurityViewPosition(1, false);
                        }
                    }
                }
            }

            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onTableModeChanged(boolean z) {
                KeyguardArrowViewController keyguardArrowViewController = KeyguardArrowViewController.this;
                if (keyguardArrowViewController.mLastOrientation == 1) {
                    return;
                }
                keyguardArrowViewController.mIsTableArrowState = z;
                if (keyguardArrowViewController.checkArrowVisibility() && !z) {
                    keyguardArrowViewController.initArrowView();
                }
                keyguardArrowViewController.updateArrowMargin();
            }
        };
        this.mKeyguardArrowViewCallback = keyguardArrowViewCallback;
        this.mConfigurationController = configurationController;
        this.mKeyguardUpdateMonitor = keyguardUpdateMonitor;
        this.mViewMediatorCallback = viewMediatorCallback;
        this.mLeftArrowContainer = (FrameLayout) ((KeyguardArrowView) this.mView).findViewById(R.id.left_arrow_container);
        this.mLeftArrow = (SystemUIImageView) ((KeyguardArrowView) this.mView).findViewById(R.id.left_arrow);
        this.mRightArrowContainer = (FrameLayout) ((KeyguardArrowView) this.mView).findViewById(R.id.right_arrow_container);
        this.mRightArrow = (SystemUIImageView) ((KeyguardArrowView) this.mView).findViewById(R.id.right_arrow);
    }

    public static void startArrowViewAnimation(SystemUIImageView systemUIImageView) {
        if (systemUIImageView != null && systemUIImageView.getVisibility() == 0) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(systemUIImageView, (Property<SystemUIImageView, Float>) View.SCALE_X, 0.7f, 1.0f);
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(systemUIImageView, (Property<SystemUIImageView, Float>) View.SCALE_Y, 0.7f, 1.0f);
            ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(systemUIImageView, (Property<SystemUIImageView, Float>) View.ALPHA, 0.0f, 1.0f);
            ofFloat3.setInterpolator(new LinearInterpolator());
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(ofFloat, ofFloat2, ofFloat3);
            animatorSet.setInterpolator(new PathInterpolator(0.22f, 0.25f, 0.0f, 1.0f));
            animatorSet.setDuration(350L);
            animatorSet.setStartDelay(0L);
            animatorSet.start();
        }
    }

    public final boolean checkArrowVisibility() {
        boolean z;
        KeyguardUpdateMonitor keyguardUpdateMonitor = this.mKeyguardUpdateMonitor;
        if (keyguardUpdateMonitor.getLockoutAttemptDeadline() > 0 || DeviceState.isSmartViewFitToActiveDisplay()) {
            return false;
        }
        boolean z2 = LsRune.SECURITY_SUB_DISPLAY_LOCK;
        if ((z2 && keyguardUpdateMonitor.isRearSelfie()) || !this.mIsFolderOpened) {
            return false;
        }
        KeyguardSecSecurityContainerController.AnonymousClass2 anonymousClass2 = (KeyguardSecSecurityContainerController.AnonymousClass2) this.mKeyguardArrowViewCallback;
        anonymousClass2.getClass();
        if (z2 && KeyguardSecSecurityContainerController.this.mIsDisappearAnimation) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return false;
        }
        return true;
    }

    public final void initArrowView() {
        int i;
        if (checkArrowVisibility()) {
            i = ((SettingsHelper) Dependency.get(SettingsHelper.class)).getBouncerOneHandPosition();
        } else {
            i = 1;
        }
        this.mCurrentPosition = i;
        if (this.mIsTableArrowState && !((SettingsHelper) Dependency.get(SettingsHelper.class)).isLockScreenRotationAllowed()) {
            Log.d("KeyguardArrowViewController", "Set force left security view position");
            this.mCurrentPosition = 0;
        }
        updateArrowView();
    }

    public final boolean isInvalidArrowView() {
        if (SecurityUtils.isArrowViewSupported(this.mKeyguardUpdateMonitor.getCurrentSecurityMode()) && this.mLeftArrow != null && this.mRightArrow != null) {
            return false;
        }
        return true;
    }

    public final boolean isPatternView() {
        if (this.mKeyguardUpdateMonitor.getCurrentSecurityMode() == KeyguardSecurityModel.SecurityMode.Pattern) {
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.util.ViewController
    public final void onInit() {
        if (LsRune.SECURITY_SUB_DISPLAY_LOCK) {
            SecurityUtils.initMainDisplaySize(getContext());
        }
    }

    @Override // com.android.systemui.util.ViewController
    public final void onViewAttached() {
        this.mKeyguardUpdateMonitor.registerCallback(this.mUpdateCallback);
        ((ConfigurationControllerImpl) this.mConfigurationController).addCallback(this.mConfigurationListener);
        ((DisplayLifecycle) Dependency.get(DisplayLifecycle.class)).addObserver(this.mDisplayLifecycleObserver);
        WallpaperUtils.registerSystemUIWidgetCallback(this, SystemUIWidgetUtil.convertFlag("background"));
        this.mIsFolderOpened = ((DisplayLifecycle) Dependency.get(DisplayLifecycle.class)).mIsFolderOpened;
        initArrowView();
        this.mLeftArrowGD = new GestureDetector(getContext(), new GestureDetector.SimpleOnGestureListener() { // from class: com.android.keyguard.KeyguardArrowViewController.4
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public final boolean onDoubleTap(MotionEvent motionEvent) {
                KeyguardArrowViewController.this.mLeftArrow.setPressed(false);
                KeyguardArrowViewController keyguardArrowViewController = KeyguardArrowViewController.this;
                keyguardArrowViewController.mCurrentPosition = 0;
                keyguardArrowViewController.mViewMediatorCallback.userActivity();
                KeyguardArrowViewController keyguardArrowViewController2 = KeyguardArrowViewController.this;
                keyguardArrowViewController2.mIsTableArrowState = false;
                keyguardArrowViewController2.updateArrowVisibility(true);
                KeyguardArrowViewController.this.updateSecurityViewPosition(true, false);
                SystemUIAnalytics.sendEventLog(DATA.DM_FIELD_INDEX.VOLTE_DOMAIN_UI_SHOW, "1036");
                KeyguardArrowViewController.m54$$Nest$mannounceForArrowAccessibility(KeyguardArrowViewController.this, true);
                return false;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public final boolean onSingleTapConfirmed(MotionEvent motionEvent) {
                KeyguardArrowViewController.this.mLeftArrow.setPressed(false);
                KeyguardArrowViewController keyguardArrowViewController = KeyguardArrowViewController.this;
                int i = keyguardArrowViewController.mCurrentPosition;
                if (i == 2) {
                    keyguardArrowViewController.mCurrentPosition = 1;
                } else if (i == 1) {
                    keyguardArrowViewController.mCurrentPosition = 0;
                }
                keyguardArrowViewController.mViewMediatorCallback.userActivity();
                KeyguardArrowViewController keyguardArrowViewController2 = KeyguardArrowViewController.this;
                keyguardArrowViewController2.mIsTableArrowState = false;
                keyguardArrowViewController2.updateArrowVisibility(true);
                KeyguardArrowViewController.this.updateSecurityViewPosition(true, false);
                SystemUIAnalytics.sendEventLog(DATA.DM_FIELD_INDEX.VOLTE_DOMAIN_UI_SHOW, "1035");
                KeyguardArrowViewController.m54$$Nest$mannounceForArrowAccessibility(KeyguardArrowViewController.this, true);
                return false;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public final boolean onSingleTapUp(MotionEvent motionEvent) {
                KeyguardArrowViewController.this.mLeftArrow.setPressed(true);
                return false;
            }
        });
        final int i = 0;
        this.mLeftArrow.setOnTouchListener(new View.OnTouchListener(this) { // from class: com.android.keyguard.KeyguardArrowViewController$$ExternalSyntheticLambda0
            public final /* synthetic */ KeyguardArrowViewController f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                switch (i) {
                    case 0:
                        this.f$0.mLeftArrowGD.onTouchEvent(motionEvent);
                        return true;
                    default:
                        this.f$0.mRightArrowGD.onTouchEvent(motionEvent);
                        return true;
                }
            }
        });
        this.mRightArrowGD = new GestureDetector(getContext(), new GestureDetector.SimpleOnGestureListener() { // from class: com.android.keyguard.KeyguardArrowViewController.5
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public final boolean onDoubleTap(MotionEvent motionEvent) {
                KeyguardArrowViewController.this.mRightArrow.setPressed(false);
                KeyguardArrowViewController keyguardArrowViewController = KeyguardArrowViewController.this;
                keyguardArrowViewController.mCurrentPosition = 2;
                keyguardArrowViewController.mViewMediatorCallback.userActivity();
                KeyguardArrowViewController keyguardArrowViewController2 = KeyguardArrowViewController.this;
                keyguardArrowViewController2.mIsTableArrowState = false;
                keyguardArrowViewController2.updateArrowVisibility(true);
                KeyguardArrowViewController.this.updateSecurityViewPosition(true, false);
                SystemUIAnalytics.sendEventLog(DATA.DM_FIELD_INDEX.VOLTE_DOMAIN_UI_SHOW, "1038");
                KeyguardArrowViewController.m54$$Nest$mannounceForArrowAccessibility(KeyguardArrowViewController.this, false);
                return false;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public final boolean onSingleTapConfirmed(MotionEvent motionEvent) {
                KeyguardArrowViewController.this.mRightArrow.setPressed(false);
                KeyguardArrowViewController keyguardArrowViewController = KeyguardArrowViewController.this;
                int i2 = keyguardArrowViewController.mCurrentPosition;
                if (i2 == 0) {
                    keyguardArrowViewController.mCurrentPosition = 1;
                } else if (i2 == 1) {
                    keyguardArrowViewController.mCurrentPosition = 2;
                }
                keyguardArrowViewController.mViewMediatorCallback.userActivity();
                KeyguardArrowViewController keyguardArrowViewController2 = KeyguardArrowViewController.this;
                keyguardArrowViewController2.mIsTableArrowState = false;
                keyguardArrowViewController2.updateArrowVisibility(true);
                KeyguardArrowViewController.this.updateSecurityViewPosition(true, false);
                SystemUIAnalytics.sendEventLog(DATA.DM_FIELD_INDEX.VOLTE_DOMAIN_UI_SHOW, "1037");
                KeyguardArrowViewController.m54$$Nest$mannounceForArrowAccessibility(KeyguardArrowViewController.this, false);
                return false;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public final boolean onSingleTapUp(MotionEvent motionEvent) {
                KeyguardArrowViewController.this.mRightArrow.setPressed(true);
                return false;
            }
        });
        final int i2 = 1;
        this.mRightArrow.setOnTouchListener(new View.OnTouchListener(this) { // from class: com.android.keyguard.KeyguardArrowViewController$$ExternalSyntheticLambda0
            public final /* synthetic */ KeyguardArrowViewController f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                switch (i2) {
                    case 0:
                        this.f$0.mLeftArrowGD.onTouchEvent(motionEvent);
                        return true;
                    default:
                        this.f$0.mRightArrowGD.onTouchEvent(motionEvent);
                        return true;
                }
            }
        });
    }

    @Override // com.android.systemui.util.ViewController
    public final void onViewDetached() {
        this.mKeyguardUpdateMonitor.removeCallback(this.mUpdateCallback);
        ((ConfigurationControllerImpl) this.mConfigurationController).removeCallback(this.mConfigurationListener);
        ((DisplayLifecycle) Dependency.get(DisplayLifecycle.class)).removeObserver(this.mDisplayLifecycleObserver);
        WallpaperUtils.removeSystemUIWidgetCallback(this);
    }

    public final void updateArrowMargin() {
        int i;
        float f;
        float f2;
        int dimensionPixelSize;
        int dimensionPixelSize2;
        int foldPINContainerHeight;
        if (isInvalidArrowView()) {
            return;
        }
        Resources resources = getResources();
        FrameLayout frameLayout = this.mLeftArrowContainer;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) frameLayout.getLayoutParams();
        FrameLayout frameLayout2 = this.mRightArrowContainer;
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) frameLayout2.getLayoutParams();
        int i2 = 0;
        if (this.mIsFolderOpened && !DeviceState.isSmartViewFitToActiveDisplay()) {
            isPatternView();
            boolean z = true;
            if (DeviceType.isTablet()) {
                f = DeviceState.getDisplayWidth(getContext());
                f2 = getResources().getFloat(R.dimen.kg_arrow_view_side_margin_tablet_ratio);
            } else {
                int rotation = DeviceState.getRotation(getContext().getResources().getConfiguration().windowConfiguration.getRotation());
                if (rotation != 1 && rotation != 3) {
                    i = SecurityUtils.sMainDisplayWidth;
                } else {
                    i = SecurityUtils.sMainDisplayHeight;
                }
                f = i;
                f2 = getResources().getFloat(R.dimen.kg_arrow_view_side_margin_ratio);
            }
            int i3 = (int) (f2 * f);
            Resources resources2 = getResources();
            boolean isTablet = DeviceType.isTablet();
            boolean isPatternView = isPatternView();
            EmergencyButton emergencyButton = (EmergencyButton) ((KeyguardSecSecurityContainer) KeyguardSecSecurityContainerController.this.mView).findViewById(R.id.emergency_call_button);
            if (emergencyButton == null || emergencyButton.getVisibility() != 0) {
                z = false;
            }
            if (LsRune.SECURITY_NAVBAR_ENABLED) {
                i2 = resources2.getDimensionPixelSize(R.dimen.navigation_bar_frame_height);
            }
            int i4 = R.dimen.keyguard_bottom_area_emergency_button_area_min_height_tablet;
            if (isTablet) {
                if (isPatternView) {
                    dimensionPixelSize = resources2.getDimensionPixelSize(R.dimen.keyguard_bottom_area_emergency_button_area_min_height_tablet) + resources2.getDimensionPixelSize(R.dimen.kg_pattern_lock_pattern_view_margin_bottom_tablet);
                    dimensionPixelSize2 = resources2.getDimensionPixelSize(R.dimen.kg_pattern_eca_margin_bottom_tablet);
                } else {
                    dimensionPixelSize = resources2.getDimensionPixelSize(R.dimen.keyguard_bottom_area_emergency_button_area_min_height_tablet) + resources2.getDimensionPixelSize(R.dimen.kg_pin_container_margin_bottom_tablet);
                    dimensionPixelSize2 = resources2.getDimensionPixelSize(R.dimen.kg_pin_eca_margin_bottom_tablet);
                }
            } else if (isPatternView) {
                dimensionPixelSize = resources2.getDimensionPixelSize(R.dimen.keyguard_bottom_area_emergency_button_area_min_height) + resources2.getDimensionPixelSize(R.dimen.kg_pattern_lock_pattern_view_margin_bottom);
                dimensionPixelSize2 = resources2.getDimensionPixelSize(R.dimen.kg_pattern_eca_margin_bottom);
            } else {
                dimensionPixelSize = resources2.getDimensionPixelSize(R.dimen.keyguard_bottom_area_emergency_button_area_min_height) + SecurityUtils.sPINContainerBottomMargin;
                dimensionPixelSize2 = resources2.getDimensionPixelSize(R.dimen.kg_pin_eca_margin_bottom);
            }
            int i5 = dimensionPixelSize2 + dimensionPixelSize + i2;
            if (!z) {
                if (!isTablet) {
                    i4 = R.dimen.keyguard_bottom_area_emergency_button_area_min_height;
                }
                i5 -= resources2.getDimensionPixelSize(i4);
            }
            if (this.mKeyguardUpdateMonitor.isInDisplayFingerprintMarginAccepted() && resources2.getConfiguration().windowConfiguration.getRotation() == 0) {
                i5 += (resources2.getDimensionPixelSize(R.dimen.kg_emergency_button_margin_bottom_for_tablet_fingerprint) + DeviceState.sInDisplayFingerprintHeight) - i2;
            }
            Resources resources3 = getResources();
            boolean isPatternView2 = isPatternView();
            if (DeviceType.isTablet()) {
                if (isPatternView2) {
                    foldPINContainerHeight = resources3.getDimensionPixelSize(R.dimen.kg_pattern_lock_pattern_view_height_tablet);
                } else {
                    foldPINContainerHeight = SecurityUtils.getTabletPINContainerHeight(getContext());
                }
            } else if (isPatternView2) {
                foldPINContainerHeight = resources3.getDimensionPixelSize(R.dimen.kg_pattern_lock_pattern_view_height);
            } else {
                foldPINContainerHeight = SecurityUtils.getFoldPINContainerHeight(getContext());
            }
            resources.getDimensionPixelSize(R.dimen.navigation_bar_frame_height);
            int i6 = this.mLastOrientation;
            layoutParams.height = foldPINContainerHeight;
            layoutParams2.height = foldPINContainerHeight;
            layoutParams.leftMargin = i3;
            layoutParams2.rightMargin = i3;
            layoutParams.bottomMargin = i5;
            layoutParams2.bottomMargin = i5;
        } else {
            layoutParams.leftMargin = 0;
            layoutParams.bottomMargin = 0;
            layoutParams2.rightMargin = 0;
            layoutParams2.bottomMargin = 0;
        }
        frameLayout.setLayoutParams(layoutParams);
        frameLayout2.setLayoutParams(layoutParams2);
    }

    public final void updateArrowStyle(boolean z) {
        int i;
        int i2;
        int i3;
        if (isInvalidArrowView()) {
            return;
        }
        if (z) {
            i = R.drawable.lock_bouncer_whitebg_btn_left_mtrl;
        } else {
            i = R.drawable.lock_bouncer_btn_left_mtrl;
        }
        SystemUIImageView systemUIImageView = this.mLeftArrow;
        systemUIImageView.setImageResource(i);
        if (z) {
            i2 = R.drawable.lock_bouncer_whitebg_btn_right_mtrl;
        } else {
            i2 = R.drawable.lock_bouncer_btn_right_mtrl;
        }
        SystemUIImageView systemUIImageView2 = this.mRightArrow;
        systemUIImageView2.setImageResource(i2);
        Context context = getContext();
        int i4 = R.drawable.ripple_drawable_pin_whitebg;
        if (z) {
            i3 = R.drawable.ripple_drawable_pin_whitebg;
        } else {
            i3 = R.drawable.origin_ripple_drawable;
        }
        systemUIImageView.setBackground(context.getDrawable(i3));
        Context context2 = getContext();
        if (!z) {
            i4 = R.drawable.origin_ripple_drawable;
        }
        systemUIImageView2.setBackground(context2.getDrawable(i4));
    }

    public final void updateArrowView() {
        if (isInvalidArrowView()) {
            return;
        }
        updateArrowStyle(WallpaperUtils.isWhiteKeyguardWallpaper("background"));
        updateArrowVisibility(true);
        updateArrowMargin();
        updateSecurityViewPosition(false, false);
    }

    public final void updateArrowVisibility(boolean z) {
        int i;
        if (isInvalidArrowView()) {
            return;
        }
        boolean checkArrowVisibility = checkArrowVisibility();
        SystemUIImageView systemUIImageView = this.mRightArrow;
        SystemUIImageView systemUIImageView2 = this.mLeftArrow;
        int i2 = 8;
        if (checkArrowVisibility && z) {
            int i3 = this.mCurrentPosition;
            if (i3 != 0 && i3 != 2) {
                systemUIImageView2.setVisibility(0);
                systemUIImageView.setVisibility(0);
                return;
            }
            if (i3 == 0) {
                i = 8;
            } else {
                i = 0;
            }
            systemUIImageView2.setVisibility(i);
            if (this.mCurrentPosition != 2) {
                i2 = 0;
            }
            systemUIImageView.setVisibility(i2);
            return;
        }
        systemUIImageView2.setVisibility(8);
        systemUIImageView.setVisibility(8);
    }

    public final void updateSecurityViewPosition(boolean z, boolean z2) {
        boolean z3 = this.mIsTimerRunning;
        KeyguardArrowViewCallback keyguardArrowViewCallback = this.mKeyguardArrowViewCallback;
        if (!z3 && checkArrowVisibility() && SecurityUtils.isArrowViewSupported(this.mKeyguardUpdateMonitor.getCurrentSecurityMode())) {
            int i = this.mCurrentPosition;
            KeyguardSecSecurityContainerController keyguardSecSecurityContainerController = KeyguardSecSecurityContainerController.this;
            if (keyguardSecSecurityContainerController.mCurrentSecurityMode != KeyguardSecurityModel.SecurityMode.None) {
                KeyguardSecSecurityContainer keyguardSecSecurityContainer = (KeyguardSecSecurityContainer) keyguardSecSecurityContainerController.mView;
                if (keyguardSecSecurityContainer.mCurrentMode == 3) {
                    ((KeyguardSecSecurityContainer.SecViewMode) keyguardSecSecurityContainer.mViewMode).updateSecurityViewPosition(i, z);
                }
            }
            if (!this.mIsTableArrowState || ((SettingsHelper) Dependency.get(SettingsHelper.class)).isLockScreenRotationAllowed()) {
                SettingsHelper settingsHelper = (SettingsHelper) Dependency.get(SettingsHelper.class);
                Settings.Global.putInt(settingsHelper.mContext.getContentResolver(), "bouncer_one_hand_position", this.mCurrentPosition);
                return;
            }
            return;
        }
        KeyguardSecSecurityContainerController keyguardSecSecurityContainerController2 = KeyguardSecSecurityContainerController.this;
        if (keyguardSecSecurityContainerController2.mCurrentSecurityMode != KeyguardSecurityModel.SecurityMode.None) {
            KeyguardSecSecurityContainer keyguardSecSecurityContainer2 = (KeyguardSecSecurityContainer) keyguardSecSecurityContainerController2.mView;
            if (keyguardSecSecurityContainer2.mCurrentMode == 3) {
                ((KeyguardSecSecurityContainer.SecViewMode) keyguardSecSecurityContainer2.mViewMode).updateSecurityViewPosition(1, false);
            }
        }
    }

    @Override // com.android.systemui.widget.SystemUIWidgetCallback
    public final void updateStyle(long j, SemWallpaperColors semWallpaperColors) {
        updateArrowStyle(WallpaperUtils.isWhiteKeyguardWallpaper("background"));
    }
}
