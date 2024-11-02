package com.android.systemui.statusbar.phone;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.admin.DevicePolicyManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.Point;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.UserHandle;
import android.os.UserManager;
import android.provider.Settings;
import android.telecom.TelecomManager;
import android.util.Log;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.view.animation.PathInterpolator;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.motion.widget.KeyAttributes$$ExternalSyntheticOutline0;
import com.android.keyguard.EmergencyButton;
import com.android.keyguard.EmergencyButtonController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.keyguard.KeyguardUpdateMonitorCallback;
import com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;
import com.android.systemui.Dependency;
import com.android.systemui.LsRune;
import com.android.systemui.R;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.devicepolicy.DevicePolicyManagerExtKt;
import com.android.systemui.keyguard.KeyguardFastBioUnlockController;
import com.android.systemui.keyguard.WakefulnessLifecycle;
import com.android.systemui.keyguard.data.quickaffordance.KeyguardQuickAffordanceConfig;
import com.android.systemui.keyguard.domain.interactor.KeyguardInteractor;
import com.android.systemui.keyguard.domain.interactor.KeyguardQuickAffordanceInteractor;
import com.android.systemui.keyguard.shared.model.CameraLaunchSourceModel;
import com.android.systemui.keyguard.shared.quickaffordance.KeyguardQuickAffordancePosition;
import com.android.systemui.keyguard.ui.binder.KeyguardSecBottomAreaViewBinder$bind$1;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.shade.CameraLauncher;
import com.android.systemui.shade.QuickSettingsController;
import com.android.systemui.statusbar.KeyguardSecAffordanceView;
import com.android.systemui.statusbar.KeyguardShortcutManager;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.statusbar.policy.KeyguardStateControllerImpl;
import com.android.systemui.util.DeviceState;
import com.android.systemui.util.DeviceType;
import com.android.systemui.util.LogUtil;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.util.SystemUIAnalytics;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.function.Predicate;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class KeyguardSecBottomAreaViewController extends KeyguardBottomAreaViewController {
    public static final long APPEAR_ANIM_DURATION;
    public static final String KEY_HELP_TEXT_BOTTOM;
    public static final String KEY_HELP_TEXT_HEIGHT;
    public static final String KEY_HELP_TEXT_VISIBILITY;
    public final ActivityStarter activityStarter;
    public final Lazy bottomDozeArea$delegate;
    public final BroadcastDispatcher broadcastDispatcher;
    public final CameraLauncher cameraLauncher;
    public final CentralSurfaces centralSurfaces;
    public final DevicePolicyManager devicePolicyManager;
    public AnimatorSet helpTextAnimSet;
    public final Lazy indicationArea$delegate;
    public final Lazy indicationText$delegate;
    public boolean isAllShortcutDisabled;
    public boolean isDozing;
    public boolean isIndicationUpdatable;
    public boolean isSecure;
    public boolean isUserSetupComplete;
    public boolean isUserUnlocked;
    public final boolean isUsimTextAreaShowing;
    public final KeyguardInteractor keyguardInteractor;
    public final KeyguardStateController keyguardStateController;
    public final KeyguardUpdateMonitor keyguardUpdateMonitor;
    public final KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallbackForShortcuts;
    public final Lazy leftShortcutArea$delegate;
    public final Lazy leftView$delegate;
    public final KeyguardSecBottomAreaViewController$mDevicePolicyReceiver$1 mDevicePolicyReceiver;
    public boolean mEasyMode;
    public final PathInterpolator mInterpolator;
    public boolean mPermDisableState;
    public boolean mSavingMode;
    public final KeyguardSecBottomAreaViewController$mShortcutCallback$1 mShortcutCallback;
    public final KeyguardSecBottomAreaViewController$mWakefulnessObserver$1 mWakefulnessObserver;
    public final KeyguardQuickAffordanceInteractor quickAffordanceInteractor;
    public final QuickSettingsController quickSettingsController;
    public final Lazy rightShortcutArea$delegate;
    public final Lazy rightView$delegate;
    public final SettingsHelper settingsHelper;
    public final KeyguardShortcutManager shortcutManager;
    public final KeyguardSecBottomAreaViewController$shortcutManagerCallback$1 shortcutManagerCallback;
    public final WakefulnessLifecycle wakefulnessLifecycle;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
        APPEAR_ANIM_DURATION = 1000L;
        KEY_HELP_TEXT_VISIBILITY = "help_text_visibility";
        KEY_HELP_TEXT_HEIGHT = "help_text_height";
        KEY_HELP_TEXT_BOTTOM = "help_text_margin";
    }

    /* JADX WARN: Type inference failed for: r1v19, types: [com.android.systemui.statusbar.phone.KeyguardSecBottomAreaViewController$mWakefulnessObserver$1] */
    /* JADX WARN: Type inference failed for: r2v1, types: [com.android.systemui.statusbar.phone.KeyguardSecBottomAreaViewController$mDevicePolicyReceiver$1] */
    /* JADX WARN: Type inference failed for: r2v17, types: [com.android.systemui.statusbar.phone.KeyguardSecBottomAreaViewController$mShortcutCallback$1] */
    public KeyguardSecBottomAreaViewController(ActivityStarter activityStarter, DevicePolicyManager devicePolicyManager, CentralSurfaces centralSurfaces, CameraLauncher cameraLauncher, KeyguardInteractor keyguardInteractor, KeyguardStateController keyguardStateController, KeyguardUpdateMonitor keyguardUpdateMonitor, KeyguardQuickAffordanceInteractor keyguardQuickAffordanceInteractor, QuickSettingsController quickSettingsController, SettingsHelper settingsHelper, KeyguardShortcutManager keyguardShortcutManager, WakefulnessLifecycle wakefulnessLifecycle, BroadcastDispatcher broadcastDispatcher, KeyguardBottomAreaView keyguardBottomAreaView) {
        super((KeyguardSecBottomAreaView) keyguardBottomAreaView);
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        this.activityStarter = activityStarter;
        this.devicePolicyManager = devicePolicyManager;
        this.centralSurfaces = centralSurfaces;
        this.cameraLauncher = cameraLauncher;
        this.keyguardInteractor = keyguardInteractor;
        this.keyguardStateController = keyguardStateController;
        this.keyguardUpdateMonitor = keyguardUpdateMonitor;
        this.quickAffordanceInteractor = keyguardQuickAffordanceInteractor;
        this.quickSettingsController = quickSettingsController;
        this.settingsHelper = settingsHelper;
        this.shortcutManager = keyguardShortcutManager;
        this.wakefulnessLifecycle = wakefulnessLifecycle;
        this.broadcastDispatcher = broadcastDispatcher;
        this.leftView$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.systemui.statusbar.phone.KeyguardSecBottomAreaViewController$leftView$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                KeyguardSecBottomAreaViewController keyguardSecBottomAreaViewController = KeyguardSecBottomAreaViewController.this;
                String str = KeyguardSecBottomAreaViewController.KEY_HELP_TEXT_VISIBILITY;
                return (KeyguardSecAffordanceView) ((KeyguardSecBottomAreaView) keyguardSecBottomAreaViewController.mView).leftView$delegate.getValue();
            }
        });
        this.rightView$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.systemui.statusbar.phone.KeyguardSecBottomAreaViewController$rightView$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                KeyguardSecBottomAreaViewController keyguardSecBottomAreaViewController = KeyguardSecBottomAreaViewController.this;
                String str = KeyguardSecBottomAreaViewController.KEY_HELP_TEXT_VISIBILITY;
                return ((KeyguardSecBottomAreaView) keyguardSecBottomAreaViewController.mView).getRightView();
            }
        });
        this.leftShortcutArea$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.systemui.statusbar.phone.KeyguardSecBottomAreaViewController$leftShortcutArea$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                KeyguardSecBottomAreaViewController keyguardSecBottomAreaViewController = KeyguardSecBottomAreaViewController.this;
                String str = KeyguardSecBottomAreaViewController.KEY_HELP_TEXT_VISIBILITY;
                return (View) ((KeyguardSecBottomAreaView) keyguardSecBottomAreaViewController.mView).leftShortcutArea$delegate.getValue();
            }
        });
        this.rightShortcutArea$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.systemui.statusbar.phone.KeyguardSecBottomAreaViewController$rightShortcutArea$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                KeyguardSecBottomAreaViewController keyguardSecBottomAreaViewController = KeyguardSecBottomAreaViewController.this;
                String str = KeyguardSecBottomAreaViewController.KEY_HELP_TEXT_VISIBILITY;
                return (View) ((KeyguardSecBottomAreaView) keyguardSecBottomAreaViewController.mView).rightShortcutArea$delegate.getValue();
            }
        });
        this.indicationArea$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.systemui.statusbar.phone.KeyguardSecBottomAreaViewController$indicationArea$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                KeyguardSecBottomAreaViewController keyguardSecBottomAreaViewController = KeyguardSecBottomAreaViewController.this;
                String str = KeyguardSecBottomAreaViewController.KEY_HELP_TEXT_VISIBILITY;
                return (ViewGroup) ((KeyguardSecBottomAreaView) keyguardSecBottomAreaViewController.mView).indicationArea$delegate.getValue();
            }
        });
        this.indicationText$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.systemui.statusbar.phone.KeyguardSecBottomAreaViewController$indicationText$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                KeyguardSecBottomAreaViewController keyguardSecBottomAreaViewController = KeyguardSecBottomAreaViewController.this;
                String str = KeyguardSecBottomAreaViewController.KEY_HELP_TEXT_VISIBILITY;
                return (TextView) ((KeyguardSecBottomAreaView) keyguardSecBottomAreaViewController.mView).indicationText$delegate.getValue();
            }
        });
        this.bottomDozeArea$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.systemui.statusbar.phone.KeyguardSecBottomAreaViewController$bottomDozeArea$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                KeyguardSecBottomAreaViewController keyguardSecBottomAreaViewController = KeyguardSecBottomAreaViewController.this;
                String str = KeyguardSecBottomAreaViewController.KEY_HELP_TEXT_VISIBILITY;
                return (FrameLayout) ((KeyguardSecBottomAreaView) keyguardSecBottomAreaViewController.mView).bottomDozeArea$delegate.getValue();
            }
        });
        this.isUsimTextAreaShowing = true;
        this.mDevicePolicyReceiver = new BroadcastReceiver() { // from class: com.android.systemui.statusbar.phone.KeyguardSecBottomAreaViewController$mDevicePolicyReceiver$1
            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context, Intent intent) {
                final KeyguardSecBottomAreaViewController keyguardSecBottomAreaViewController = KeyguardSecBottomAreaViewController.this;
                String str = KeyguardSecBottomAreaViewController.KEY_HELP_TEXT_VISIBILITY;
                ((KeyguardSecBottomAreaView) keyguardSecBottomAreaViewController.mView).post(new Runnable() { // from class: com.android.systemui.statusbar.phone.KeyguardSecBottomAreaViewController$mDevicePolicyReceiver$1$onReceive$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        Function0 updateLeftAffordanceIcon;
                        KeyguardSecBottomAreaViewController keyguardSecBottomAreaViewController2 = KeyguardSecBottomAreaViewController.this;
                        String str2 = KeyguardSecBottomAreaViewController.KEY_HELP_TEXT_VISIBILITY;
                        List<KeyguardSecAffordanceView> listOf = CollectionsKt__CollectionsKt.listOf(keyguardSecBottomAreaViewController2.getLeftView(), KeyguardSecBottomAreaViewController.this.getRightView());
                        KeyguardSecBottomAreaViewController keyguardSecBottomAreaViewController3 = KeyguardSecBottomAreaViewController.this;
                        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listOf, 10));
                        for (KeyguardSecAffordanceView keyguardSecAffordanceView : listOf) {
                            if (keyguardSecAffordanceView.mShortcutForCamera) {
                                keyguardSecBottomAreaViewController3.getClass();
                                boolean z5 = keyguardSecAffordanceView.mRight;
                                KeyguardSecBottomAreaView keyguardSecBottomAreaView = (KeyguardSecBottomAreaView) keyguardSecBottomAreaViewController3.mView;
                                if (z5) {
                                    updateLeftAffordanceIcon = keyguardSecBottomAreaView.getUpdateRightAffordanceIcon();
                                } else {
                                    updateLeftAffordanceIcon = keyguardSecBottomAreaView.getUpdateLeftAffordanceIcon();
                                }
                                updateLeftAffordanceIcon.invoke();
                            }
                            arrayList.add(Unit.INSTANCE);
                        }
                    }
                });
            }
        };
        if (LsRune.KEYGUARD_FBE) {
            z = keyguardUpdateMonitor.isUserUnlocked();
        } else {
            z = true;
        }
        this.isUserUnlocked = z;
        if (!settingsHelper.isUltraPowerSavingMode() && !settingsHelper.isEmergencyMode()) {
            z2 = false;
        } else {
            z2 = true;
        }
        this.mSavingMode = z2;
        this.mEasyMode = settingsHelper.isEasyModeOn();
        if (LsRune.SECURITY_SIM_PERM_DISABLED && keyguardUpdateMonitor.isIccBlockedPermanently()) {
            z3 = true;
        } else {
            z3 = false;
        }
        this.mPermDisableState = z3;
        if (Settings.Secure.getInt(getContext().getContentResolver(), "user_setup_complete", 0) == 1) {
            z4 = true;
        } else {
            z4 = false;
        }
        this.isUserSetupComplete = z4;
        this.mShortcutCallback = new SettingsHelper.OnChangedCallback() { // from class: com.android.systemui.statusbar.phone.KeyguardSecBottomAreaViewController$mShortcutCallback$1
            @Override // com.android.systemui.util.SettingsHelper.OnChangedCallback
            public final void onChanged(Uri uri) {
                if (uri == null) {
                    return;
                }
                boolean areEqual = Intrinsics.areEqual(uri, Settings.System.getUriFor("ultra_powersaving_mode"));
                boolean z5 = false;
                KeyguardSecBottomAreaViewController keyguardSecBottomAreaViewController = KeyguardSecBottomAreaViewController.this;
                if (!areEqual && !Intrinsics.areEqual(uri, Settings.System.getUriFor("minimal_battery_use")) && !Intrinsics.areEqual(uri, Settings.System.getUriFor("emergency_mode"))) {
                    if (Intrinsics.areEqual(uri, Settings.System.getUriFor("easy_mode_switch"))) {
                        boolean z6 = keyguardSecBottomAreaViewController.mEasyMode;
                        keyguardSecBottomAreaViewController.mEasyMode = keyguardSecBottomAreaViewController.settingsHelper.isEasyModeOn();
                        if (z6 != keyguardSecBottomAreaViewController.mEasyMode) {
                            keyguardSecBottomAreaViewController.onDensityOrFontScaleChanged(true);
                            return;
                        }
                        return;
                    }
                    if (Intrinsics.areEqual(uri, Settings.System.getUriFor("lock_shortcut_type"))) {
                        if (keyguardSecBottomAreaViewController.mSavingMode || keyguardSecBottomAreaViewController.mEasyMode) {
                            z5 = true;
                        }
                        keyguardSecBottomAreaViewController.onDensityOrFontScaleChanged(z5);
                        return;
                    }
                    if (Intrinsics.areEqual(uri, Settings.Secure.getUriFor("display_cutout_hide_notch"))) {
                        String str = KeyguardSecBottomAreaViewController.KEY_HELP_TEXT_VISIBILITY;
                        ((KeyguardSecBottomAreaView) keyguardSecBottomAreaViewController.mView).updateLayout();
                        return;
                    }
                    return;
                }
                boolean z7 = keyguardSecBottomAreaViewController.mSavingMode;
                if (keyguardSecBottomAreaViewController.settingsHelper.isUltraPowerSavingMode() || keyguardSecBottomAreaViewController.settingsHelper.isEmergencyMode()) {
                    z5 = true;
                }
                keyguardSecBottomAreaViewController.mSavingMode = z5;
                if (z7 != keyguardSecBottomAreaViewController.mSavingMode) {
                    keyguardSecBottomAreaViewController.onDensityOrFontScaleChanged(true);
                }
            }
        };
        this.keyguardUpdateMonitorCallbackForShortcuts = new KeyguardUpdateMonitorCallback() { // from class: com.android.systemui.statusbar.phone.KeyguardSecBottomAreaViewController$keyguardUpdateMonitorCallbackForShortcuts$1
            public boolean mOutOfService;

            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onKeyguardVisibilityChanged(boolean z5) {
                String str = KeyguardSecBottomAreaViewController.KEY_HELP_TEXT_VISIBILITY;
                KeyguardSecBottomAreaViewController keyguardSecBottomAreaViewController = KeyguardSecBottomAreaViewController.this;
                ((KeyguardSecBottomAreaView) keyguardSecBottomAreaViewController.mView).isKeyguardVisible = z5;
                KeyguardSecBottomAreaViewController.access$setIndicationUpdatable(keyguardSecBottomAreaViewController, z5);
                ((KeyguardSecBottomAreaViewBinder$bind$1) ((KeyguardSecBottomAreaView) keyguardSecBottomAreaViewController.mView).getBinding()).updateIndicationPosition();
            }

            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onLockModeChanged() {
                Log.d("KeyguardSecBottomAreaViewController", "onLockModeChanged");
                String str = KeyguardSecBottomAreaViewController.KEY_HELP_TEXT_VISIBILITY;
                ((KeyguardSecBottomAreaView) KeyguardSecBottomAreaViewController.this.mView).updateLayout();
            }

            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onRefreshCarrierInfo(Intent intent) {
                boolean isOutOfService;
                Function0 updateLeftAffordanceIcon;
                boolean z5 = LsRune.SECURITY_DISABLE_EMERGENCY_CALL_WHEN_OFFLINE;
                KeyguardSecBottomAreaViewController keyguardSecBottomAreaViewController = KeyguardSecBottomAreaViewController.this;
                if (z5 && this.mOutOfService != (isOutOfService = keyguardSecBottomAreaViewController.keyguardUpdateMonitor.isOutOfService())) {
                    this.mOutOfService = isOutOfService;
                    List<KeyguardSecAffordanceView> listOf = CollectionsKt__CollectionsKt.listOf(keyguardSecBottomAreaViewController.getLeftView(), keyguardSecBottomAreaViewController.getRightView());
                    ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listOf, 10));
                    for (KeyguardSecAffordanceView keyguardSecAffordanceView : listOf) {
                        if (keyguardSecAffordanceView.mIsShortcutForPhone) {
                            boolean z6 = keyguardSecAffordanceView.mRight;
                            KeyguardSecBottomAreaView keyguardSecBottomAreaView = (KeyguardSecBottomAreaView) keyguardSecBottomAreaViewController.mView;
                            if (z6) {
                                updateLeftAffordanceIcon = keyguardSecBottomAreaView.getUpdateRightAffordanceIcon();
                            } else {
                                updateLeftAffordanceIcon = keyguardSecBottomAreaView.getUpdateLeftAffordanceIcon();
                            }
                            updateLeftAffordanceIcon.invoke();
                        }
                        arrayList.add(Unit.INSTANCE);
                    }
                }
                String str = KeyguardSecBottomAreaViewController.KEY_HELP_TEXT_VISIBILITY;
                ((KeyguardSecBottomAreaViewBinder$bind$1) ((KeyguardSecBottomAreaView) keyguardSecBottomAreaViewController.mView).getBinding()).updateIndicationPosition();
            }

            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onSimStateChanged(int i, int i2, int i3) {
                boolean z5 = LsRune.LOCKUI_BOTTOM_USIM_TEXT;
                KeyguardSecBottomAreaViewController keyguardSecBottomAreaViewController = KeyguardSecBottomAreaViewController.this;
                if (z5) {
                    String str = KeyguardSecBottomAreaViewController.KEY_HELP_TEXT_VISIBILITY;
                    ((KeyguardSecBottomAreaView) keyguardSecBottomAreaViewController.mView).currentSimState = i3;
                }
                if (LsRune.SECURITY_SIM_PERM_DISABLED) {
                    keyguardSecBottomAreaViewController.mPermDisableState = keyguardSecBottomAreaViewController.keyguardUpdateMonitor.isIccBlockedPermanently();
                }
                if (((TextView) keyguardSecBottomAreaViewController.indicationText$delegate.getValue()) != null) {
                    boolean z6 = keyguardSecBottomAreaViewController.mPermDisableState;
                    Lazy lazy = keyguardSecBottomAreaViewController.indicationText$delegate;
                    if (z6) {
                        ((TextView) lazy.getValue()).setVisibility(4);
                    } else if (keyguardSecBottomAreaViewController.isSecure && !keyguardSecBottomAreaViewController.keyguardUpdateMonitor.getUserCanSkipBouncer(KeyguardUpdateMonitor.getCurrentUser())) {
                        ((TextView) lazy.getValue()).setVisibility(0);
                    }
                }
                ((KeyguardSecBottomAreaViewBinder$bind$1) ((KeyguardSecBottomAreaView) keyguardSecBottomAreaViewController.mView).getBinding()).updateIndicationPosition();
            }

            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onUserSwitchComplete(int i) {
                String str = KeyguardSecBottomAreaViewController.KEY_HELP_TEXT_VISIBILITY;
                ((KeyguardSecBottomAreaView) KeyguardSecBottomAreaViewController.this.mView).updateLayout();
            }

            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onUserUnlocked() {
                KeyguardSecBottomAreaViewController keyguardSecBottomAreaViewController = KeyguardSecBottomAreaViewController.this;
                boolean isUserUnlocked = keyguardSecBottomAreaViewController.keyguardUpdateMonitor.isUserUnlocked();
                if (keyguardSecBottomAreaViewController.isUserUnlocked != isUserUnlocked) {
                    keyguardSecBottomAreaViewController.isUserUnlocked = isUserUnlocked;
                }
                boolean z5 = keyguardSecBottomAreaViewController.isUserUnlocked;
                KeyguardSecBottomAreaViewController.access$showShortcutsIfPossible(keyguardSecBottomAreaViewController);
            }
        };
        this.isIndicationUpdatable = true;
        this.isAllShortcutDisabled = (keyguardShortcutManager.hasShortcut(0) || keyguardShortcutManager.hasShortcut(1)) ? false : true;
        this.mInterpolator = new PathInterpolator(0.25f, 0.25f, 0.0f, 1.0f);
        this.mWakefulnessObserver = new WakefulnessLifecycle.Observer() { // from class: com.android.systemui.statusbar.phone.KeyguardSecBottomAreaViewController$mWakefulnessObserver$1
            @Override // com.android.systemui.keyguard.WakefulnessLifecycle.Observer
            public final void onFinishedGoingToSleep() {
                String str = KeyguardSecBottomAreaViewController.KEY_HELP_TEXT_VISIBILITY;
                KeyguardSecBottomAreaViewController keyguardSecBottomAreaViewController = KeyguardSecBottomAreaViewController.this;
                keyguardSecBottomAreaViewController.getIndicationArea().setAlpha(0.0f);
                KeyguardSecBottomAreaViewController.access$setIndicationUpdatable(keyguardSecBottomAreaViewController, !((KeyguardSecBottomAreaView) keyguardSecBottomAreaViewController.mView).isKeyguardVisible);
            }

            @Override // com.android.systemui.keyguard.WakefulnessLifecycle.Observer
            public final void onStartedWakingUp() {
                String str = KeyguardSecBottomAreaViewController.KEY_HELP_TEXT_VISIBILITY;
                final KeyguardSecBottomAreaViewController keyguardSecBottomAreaViewController = KeyguardSecBottomAreaViewController.this;
                if (((KeyguardSecBottomAreaView) keyguardSecBottomAreaViewController.mView).isKeyguardVisible && !keyguardSecBottomAreaViewController.keyguardUpdateMonitor.isFullscreenBouncer() && !((KeyguardFastBioUnlockController) Dependency.get(KeyguardFastBioUnlockController.class)).isFastWakeAndUnlockMode()) {
                    if (!LsRune.LOCKUI_SUB_DISPLAY_LOCK || keyguardSecBottomAreaViewController.isSecure || keyguardSecBottomAreaViewController.wakefulnessLifecycle.mLastWakeReason != 9) {
                        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(keyguardSecBottomAreaViewController.getIndicationArea(), (Property<ViewGroup, Float>) View.SCALE_X, 0.8f, 1.0f);
                        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(keyguardSecBottomAreaViewController.getIndicationArea(), (Property<ViewGroup, Float>) View.SCALE_Y, 0.8f, 1.0f);
                        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(keyguardSecBottomAreaViewController.getIndicationArea(), (Property<ViewGroup, Float>) View.ALPHA, 0.0f, 1.0f);
                        ofFloat3.setInterpolator(new LinearInterpolator());
                        AnimatorSet animatorSet = new AnimatorSet();
                        keyguardSecBottomAreaViewController.helpTextAnimSet = animatorSet;
                        animatorSet.playTogether(ofFloat, ofFloat2, ofFloat3);
                        AnimatorSet animatorSet2 = keyguardSecBottomAreaViewController.helpTextAnimSet;
                        Intrinsics.checkNotNull(animatorSet2);
                        animatorSet2.setInterpolator(keyguardSecBottomAreaViewController.mInterpolator);
                        AnimatorSet animatorSet3 = keyguardSecBottomAreaViewController.helpTextAnimSet;
                        Intrinsics.checkNotNull(animatorSet3);
                        animatorSet3.setDuration(KeyguardSecBottomAreaViewController.APPEAR_ANIM_DURATION);
                        AnimatorSet animatorSet4 = keyguardSecBottomAreaViewController.helpTextAnimSet;
                        Intrinsics.checkNotNull(animatorSet4);
                        animatorSet4.setStartDelay(0L);
                        AnimatorSet animatorSet5 = keyguardSecBottomAreaViewController.helpTextAnimSet;
                        Intrinsics.checkNotNull(animatorSet5);
                        animatorSet5.addListener(new AnimatorListenerAdapter() { // from class: com.android.systemui.statusbar.phone.KeyguardSecBottomAreaViewController$startIndicationAppearAnimation$1
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public final void onAnimationCancel(Animator animator) {
                                KeyguardSecBottomAreaViewController.access$setIndicationUpdatable(KeyguardSecBottomAreaViewController.this, true);
                            }

                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public final void onAnimationEnd(Animator animator) {
                                KeyguardSecBottomAreaViewController.access$setIndicationUpdatable(KeyguardSecBottomAreaViewController.this, true);
                                KeyguardSecBottomAreaViewController keyguardSecBottomAreaViewController2 = KeyguardSecBottomAreaViewController.this;
                                keyguardSecBottomAreaViewController2.helpTextAnimSet = null;
                                keyguardSecBottomAreaViewController2.getIndicationArea().setScaleX(1.0f);
                                KeyguardSecBottomAreaViewController.this.getIndicationArea().setScaleY(1.0f);
                            }

                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public final void onAnimationStart(Animator animator) {
                                KeyguardSecBottomAreaViewController.access$setIndicationUpdatable(KeyguardSecBottomAreaViewController.this, false);
                            }
                        });
                        AnimatorSet animatorSet6 = keyguardSecBottomAreaViewController.helpTextAnimSet;
                        Intrinsics.checkNotNull(animatorSet6);
                        animatorSet6.start();
                    }
                }
            }
        };
        this.shortcutManagerCallback = new KeyguardSecBottomAreaViewController$shortcutManagerCallback$1(this);
    }

    public static final void access$setIndicationUpdatable(KeyguardSecBottomAreaViewController keyguardSecBottomAreaViewController, boolean z) {
        if (keyguardSecBottomAreaViewController.isIndicationUpdatable != z) {
            KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("mCanIndicationAreaUpdate set to ", z, "KeyguardSecBottomAreaViewController");
            keyguardSecBottomAreaViewController.isIndicationUpdatable = z;
        }
    }

    public static final void access$showShortcutsIfPossible(KeyguardSecBottomAreaViewController keyguardSecBottomAreaViewController) {
        if (!keyguardSecBottomAreaViewController.shouldDisableShortcut()) {
            ((KeyguardSecBottomAreaView) keyguardSecBottomAreaViewController.mView).getUpdateRightAffordanceIcon().invoke();
            ((KeyguardSecBottomAreaView) keyguardSecBottomAreaViewController.mView).getUpdateLeftAffordanceIcon().invoke();
        }
    }

    @Override // com.android.systemui.statusbar.phone.KeyguardBottomAreaViewController
    public final void cancelIndicationAreaAnim() {
        AnimatorSet animatorSet = this.helpTextAnimSet;
        if (animatorSet != null) {
            Intrinsics.checkNotNull(animatorSet);
            if (animatorSet.isRunning()) {
                AnimatorSet animatorSet2 = this.helpTextAnimSet;
                Intrinsics.checkNotNull(animatorSet2);
                animatorSet2.cancel();
            }
        }
    }

    public final ViewGroup getIndicationArea() {
        return (ViewGroup) this.indicationArea$delegate.getValue();
    }

    public final KeyguardSecAffordanceView getLeftView() {
        return (KeyguardSecAffordanceView) this.leftView$delegate.getValue();
    }

    public final KeyguardSecAffordanceView getRightView() {
        return (KeyguardSecAffordanceView) this.rightView$delegate.getValue();
    }

    @Override // com.android.systemui.statusbar.phone.KeyguardBottomAreaViewController
    public final boolean isNoUnlockNeed(String str) {
        boolean z;
        boolean z2;
        boolean z3;
        LogUtil.d("KeyguardSecBottomAreaViewController", KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("isNoUnlockNeed mIsSecure: ", this.isSecure), new Object[0]);
        if (str != null && str.length() != 0) {
            z = false;
        } else {
            z = true;
        }
        if (z || !this.isSecure) {
            return false;
        }
        KeyguardShortcutManager keyguardShortcutManager = this.shortcutManager;
        keyguardShortcutManager.getClass();
        if (str != null && str.length() != 0) {
            z2 = false;
        } else {
            z2 = true;
        }
        if (!z2 && (Intrinsics.areEqual(str, "com.sec.android.app.camera") || keyguardShortcutManager.isShortcutPermission(str))) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (!z3) {
            return false;
        }
        return true;
    }

    @Override // com.android.systemui.statusbar.phone.KeyguardBottomAreaViewController
    public final void launchAffordance(boolean z) {
        String str;
        String str2;
        String str3;
        boolean areEqual;
        KeyguardQuickAffordancePosition keyguardQuickAffordancePosition;
        String str4;
        ComponentName component;
        String str5 = SystemUIAnalytics.sCurrentScreenID;
        if (z) {
            str = "2";
        } else {
            str = "1";
        }
        SystemUIAnalytics.sendEventLog(str5, "1007", str);
        String str6 = SystemUIAnalytics.sCurrentScreenID;
        if (z) {
            str2 = "1009";
        } else {
            str2 = "1008";
        }
        Intent intent = this.shortcutManager.getIntent(z ? 1 : 0);
        if (intent != null && (component = intent.getComponent()) != null) {
            str3 = component.getPackageName();
        } else {
            str3 = null;
        }
        SystemUIAnalytics.sendEventLog(str6, str2, str3);
        boolean isShortcutForCamera = this.shortcutManager.isShortcutForCamera(z ? 1 : 0);
        KeyguardInteractor keyguardInteractor = this.keyguardInteractor;
        CameraLauncher cameraLauncher = this.cameraLauncher;
        if (isShortcutForCamera) {
            CameraLaunchSourceModel cameraLaunchSourceModel = CameraLaunchSourceModel.QUICK_AFFORDANCE;
            keyguardInteractor.getClass();
            cameraLauncher.launchCamera(KeyguardInteractor.cameraLaunchSourceModelToInt(cameraLaunchSourceModel), true);
            return;
        }
        KeyguardShortcutManager.ShortcutData shortcutData = this.shortcutManager.mShortcuts[z ? 1 : 0];
        Intrinsics.checkNotNull(shortcutData);
        ComponentName componentName = shortcutData.mComponentName;
        if (componentName == null) {
            areEqual = false;
        } else {
            areEqual = Intrinsics.areEqual("com.samsung.android.app.galaxyraw", componentName.getPackageName());
        }
        if (areEqual) {
            CameraLaunchSourceModel cameraLaunchSourceModel2 = CameraLaunchSourceModel.QUICK_AFFORDANCE;
            keyguardInteractor.getClass();
            cameraLauncher.mCameraGestureHelper.launchCamera(KeyguardInteractor.cameraLaunchSourceModelToInt(cameraLaunchSourceModel2), this.shortcutManager.getIntent(z ? 1 : 0));
            return;
        }
        if (this.shortcutManager.isShortcutForPhone(z ? 1 : 0)) {
            final TelecomManager from = TelecomManager.from(getContext());
            if (from.isInManagedCall()) {
                AsyncTask.execute(new Runnable() { // from class: com.android.systemui.statusbar.phone.KeyguardSecBottomAreaViewController$launchPhone$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        from.showInCallScreen(false);
                    }
                });
                return;
            } else {
                KeyguardShortcutManager.Companion.getClass();
                this.activityStarter.startActivity(KeyguardShortcutManager.PHONE_INTENT, false);
                return;
            }
        }
        KeyguardShortcutManager keyguardShortcutManager = this.shortcutManager;
        if (z) {
            keyguardQuickAffordancePosition = KeyguardQuickAffordancePosition.BOTTOM_END;
        } else {
            keyguardQuickAffordancePosition = KeyguardQuickAffordancePosition.BOTTOM_START;
        }
        String key = ((KeyguardQuickAffordanceConfig) ((ArrayList) keyguardShortcutManager.getQuickAffordanceConfigList()).get(keyguardQuickAffordancePosition.ordinal())).getKey();
        if (z) {
            str4 = "bottom_end";
        } else {
            str4 = "bottom_start";
        }
        this.quickAffordanceInteractor.onQuickAffordanceTriggered(key, null, str4);
    }

    @Override // com.android.systemui.statusbar.phone.KeyguardBottomAreaViewController
    public final void launchApp(ComponentName componentName) {
        LogUtil.d("KeyguardSecBottomAreaViewController", KeyAttributes$$ExternalSyntheticOutline0.m("launchApp pkg: ", componentName.getPackageName()), new Object[0]);
        this.shortcutManager.getClass();
        if (KeyguardShortcutManager.isSamsungCameraPackage(componentName)) {
            CameraLaunchSourceModel cameraLaunchSourceModel = CameraLaunchSourceModel.QUICK_AFFORDANCE;
            this.keyguardInteractor.getClass();
            this.cameraLauncher.launchCamera(KeyguardInteractor.cameraLaunchSourceModelToInt(cameraLaunchSourceModel), true);
            return;
        }
        KeyguardShortcutManager keyguardShortcutManager = this.shortcutManager;
        keyguardShortcutManager.getClass();
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setComponent(componentName);
        intent.putExtra("isSecure", keyguardShortcutManager.isSecure());
        intent.addFlags(268500992);
        this.quickAffordanceInteractor.launchQuickAffordance(intent, true);
    }

    public final void onDensityOrFontScaleChanged(boolean z) {
        ((KeyguardSecBottomAreaView) this.mView).updateLayout();
        if (z && (this.mSavingMode || this.mEasyMode)) {
            updateCustomShortcutIcon(getLeftView(), 0, this.shortcutManager.hasShortcut(0));
            updateCustomShortcutIcon(getRightView(), 1, this.shortcutManager.hasShortcut(1));
        } else {
            getLeftView().updateDisplayParameters();
            getRightView().updateDisplayParameters();
            ((KeyguardSecBottomAreaView) this.mView).postDelayed(new Runnable() { // from class: com.android.systemui.statusbar.phone.KeyguardSecBottomAreaViewController$onDensityOrFontScaleChanged$1
                @Override // java.lang.Runnable
                public final void run() {
                    KeyguardShortcutManager keyguardShortcutManager = KeyguardSecBottomAreaViewController.this.shortcutManager;
                    keyguardShortcutManager.mIconSize = keyguardShortcutManager.mContext.getResources().getDimensionPixelSize(R.dimen.keyguard_affordance_height);
                    keyguardShortcutManager.updateShortcuts();
                }
            }, 2000L);
        }
    }

    @Override // com.android.systemui.util.ViewController
    public final void onInit() {
        this.settingsHelper.registerCallback(this.mShortcutCallback, (Uri[]) Arrays.copyOf(new Uri[]{Settings.System.getUriFor("ultra_powersaving_mode"), Settings.System.getUriFor("minimal_battery_use"), Settings.System.getUriFor("emergency_mode"), Settings.System.getUriFor("easy_mode_switch"), Settings.System.getUriFor("lock_shortcut_type"), Settings.Secure.getUriFor("display_cutout_hide_notch")}, 6));
        ((KeyguardSecBottomAreaView) this.mView).showShortcutsIfPossible = new Function0() { // from class: com.android.systemui.statusbar.phone.KeyguardSecBottomAreaViewController$onInit$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                KeyguardSecBottomAreaViewController.access$showShortcutsIfPossible(KeyguardSecBottomAreaViewController.this);
                return Unit.INSTANCE;
            }
        };
        ((KeyguardSecBottomAreaView) this.mView).updateLeftAffordanceIcon = new Function0() { // from class: com.android.systemui.statusbar.phone.KeyguardSecBottomAreaViewController$onInit$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                KeyguardSecBottomAreaViewController keyguardSecBottomAreaViewController = KeyguardSecBottomAreaViewController.this;
                String str = KeyguardSecBottomAreaViewController.KEY_HELP_TEXT_VISIBILITY;
                keyguardSecBottomAreaViewController.updateCustomShortcutIcon(keyguardSecBottomAreaViewController.getLeftView(), 0, KeyguardSecBottomAreaViewController.this.shortcutManager.hasShortcut(0));
                return Unit.INSTANCE;
            }
        };
        ((KeyguardSecBottomAreaView) this.mView).updateRightAffordanceIcon = new Function0() { // from class: com.android.systemui.statusbar.phone.KeyguardSecBottomAreaViewController$onInit$3
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                KeyguardSecBottomAreaViewController keyguardSecBottomAreaViewController = KeyguardSecBottomAreaViewController.this;
                String str = KeyguardSecBottomAreaViewController.KEY_HELP_TEXT_VISIBILITY;
                keyguardSecBottomAreaViewController.updateCustomShortcutIcon(keyguardSecBottomAreaViewController.getRightView(), 1, KeyguardSecBottomAreaViewController.this.shortcutManager.hasShortcut(1));
                return Unit.INSTANCE;
            }
        };
        ((KeyguardSecBottomAreaView) this.mView).setUsimTextAreaVisibility = new Function0() { // from class: com.android.systemui.statusbar.phone.KeyguardSecBottomAreaViewController$onInit$4
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                KeyguardSecBottomAreaViewController keyguardSecBottomAreaViewController = KeyguardSecBottomAreaViewController.this;
                String str = KeyguardSecBottomAreaViewController.KEY_HELP_TEXT_VISIBILITY;
                keyguardSecBottomAreaViewController.setUsimTextAreaVisibility();
                return Unit.INSTANCE;
            }
        };
    }

    @Override // com.android.systemui.statusbar.phone.KeyguardBottomAreaViewController
    public final Bundle onUiInfoRequested(boolean z) {
        int i;
        int i2;
        int dimensionPixelSize;
        int dimensionPixelSize2;
        int dimensionPixelSize3;
        int dimensionPixelSize4;
        int i3;
        Bundle bundle = new Bundle();
        if (Settings.System.getInt(getContext().getContentResolver(), "lockscreen_show_shortcut", 1) == 1) {
            i = 0;
        } else {
            i = 4;
        }
        bundle.putInt("shortcut_enable", i);
        bundle.putString("shortcut_info", Settings.System.getString(getContext().getContentResolver(), "lock_application_shortcut"));
        Resources resources = getResources();
        Point point = DeviceState.sDisplaySize;
        if (DeviceType.isTablet()) {
            if (z) {
                i3 = R.dimen.shortcut_icon_vertical_margin_land_tablet;
            } else {
                i3 = R.dimen.shortcut_icon_vertical_margin_port_tablet;
            }
            dimensionPixelSize = resources.getDimensionPixelSize(i3);
        } else {
            if (z) {
                i2 = R.dimen.shortcut_icon_vertical_margin_land;
            } else {
                i2 = R.dimen.shortcut_icon_vertical_margin_port;
            }
            dimensionPixelSize = resources.getDimensionPixelSize(i2);
        }
        bundle.putInt("shortcut_bottom", dimensionPixelSize);
        Resources resources2 = getResources();
        if (DeviceType.isTablet()) {
            if (z) {
                dimensionPixelSize2 = resources2.getDimensionPixelSize(R.dimen.keyguard_shrotcut_dls_default_side_margin_land_tablet);
            } else {
                dimensionPixelSize2 = resources2.getDimensionPixelSize(R.dimen.keyguard_shrotcut_dls_default_side_margin_tablet);
            }
        } else if (z) {
            dimensionPixelSize2 = resources2.getDimensionPixelSize(R.dimen.keyguard_shrotcut_dls_default_side_margin_land);
        } else {
            dimensionPixelSize2 = resources2.getDimensionPixelSize(R.dimen.keyguard_shrotcut_dls_default_side_margin);
        }
        bundle.putInt("shortcut_side", dimensionPixelSize2);
        Resources resources3 = getResources();
        if (DeviceType.isTablet()) {
            dimensionPixelSize3 = resources3.getDimensionPixelSize(R.dimen.keyguard_shrotcut_default_size_tablet);
        } else {
            dimensionPixelSize3 = resources3.getDimensionPixelSize(R.dimen.keyguard_shrotcut_default_size);
        }
        bundle.putInt("shortcut_size", dimensionPixelSize3);
        if (LsRune.SECURITY_FINGERPRINT_IN_DISPLAY) {
            DeviceState.setInDisplayFingerprintSensorPosition(getContext().getResources().getDisplayMetrics());
            bundle.putInt("finger_print_height", DeviceState.sInDisplayFingerprintHeight);
            bundle.putInt("finger_print_image_size", DeviceState.sInDisplayFingerprintImageSize);
            bundle.putInt("finger_print_margin", DeviceState.sInDisplayFingerprintMarginBottom);
            bundle.putBoolean("finger_print_enabled", this.keyguardUpdateMonitor.isFingerprintOptionEnabled());
        }
        bundle.putInt(KEY_HELP_TEXT_VISIBILITY, 0);
        bundle.putInt(KEY_HELP_TEXT_HEIGHT, getResources().getDimensionPixelSize(R.dimen.keyguard_indication_text_default_size) * 3);
        if (getIndicationArea() == null) {
            dimensionPixelSize4 = -1;
        } else {
            Resources resources4 = getResources();
            if (z) {
                dimensionPixelSize4 = resources4.getDimensionPixelSize(R.dimen.keyguard_indication_dls_default_bottom_margin_land);
            } else {
                dimensionPixelSize4 = resources4.getDimensionPixelSize(R.dimen.keyguard_indication_dls_default_bottom_margin);
            }
        }
        bundle.putInt(KEY_HELP_TEXT_BOTTOM, dimensionPixelSize4);
        Log.d("KeyguardSecBottomAreaViewController", "onUiInfoRequested() : " + bundle);
        return bundle;
    }

    @Override // com.android.systemui.statusbar.policy.KeyguardStateController.Callback
    public final void onUnlockedChanged() {
        ((KeyguardSecBottomAreaView) this.mView).getUpdateRightAffordanceIcon().invoke();
        ((KeyguardSecBottomAreaView) this.mView).getUpdateLeftAffordanceIcon().invoke();
        KeyguardStateControllerImpl keyguardStateControllerImpl = (KeyguardStateControllerImpl) this.keyguardStateController;
        boolean z = keyguardStateControllerImpl.mTrusted;
        this.isSecure = keyguardStateControllerImpl.mSecure;
        setUsimTextAreaVisibility();
        if (!this.keyguardUpdateMonitor.isKeyguardUnlocking() && ((KeyguardSecBottomAreaView) this.mView).isKeyguardVisible) {
            return;
        }
        Log.d("KeyguardSecBottomAreaViewController", "onUnlockMethodStateChanged not keyguardShowing status return!");
    }

    @Override // com.android.systemui.statusbar.phone.KeyguardBottomAreaViewController, com.android.systemui.util.ViewController
    public final void onViewAttached() {
        this.keyguardUpdateMonitor.registerCallback(this.keyguardUpdateMonitorCallbackForShortcuts);
        KeyguardShortcutManager keyguardShortcutManager = this.shortcutManager;
        KeyguardSecBottomAreaViewController$shortcutManagerCallback$1 keyguardSecBottomAreaViewController$shortcutManagerCallback$1 = this.shortcutManagerCallback;
        synchronized (keyguardShortcutManager) {
            int size = keyguardShortcutManager.mCallbacks.size();
            int i = 0;
            while (true) {
                if (i < size) {
                    if (((WeakReference) keyguardShortcutManager.mCallbacks.get(i)).get() == keyguardSecBottomAreaViewController$shortcutManagerCallback$1) {
                        Log.d("KeyguardShortcutManager", "registerCallback already registered: " + keyguardSecBottomAreaViewController$shortcutManagerCallback$1);
                        break;
                    }
                    i++;
                } else {
                    keyguardSecBottomAreaViewController$shortcutManagerCallback$1.getClass();
                    keyguardShortcutManager.mCallbacks.add(new WeakReference(keyguardSecBottomAreaViewController$shortcutManagerCallback$1));
                    if (UserManager.get(keyguardShortcutManager.mContext).isUserUnlocked(KeyguardUpdateMonitor.getCurrentUser())) {
                        for (int i2 = 0; i2 < 2; i2++) {
                            keyguardSecBottomAreaViewController$shortcutManagerCallback$1.updateShortcutView(i2);
                        }
                    }
                    Unit unit = Unit.INSTANCE;
                }
            }
        }
        ((KeyguardStateControllerImpl) this.keyguardStateController).addCallback(this);
        BroadcastDispatcher.registerReceiver$default(this.broadcastDispatcher, this.mDevicePolicyReceiver, new IntentFilter("android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"), null, UserHandle.ALL, 0, null, 48);
        this.wakefulnessLifecycle.addObserver(this.mWakefulnessObserver);
        KeyguardStateControllerImpl keyguardStateControllerImpl = (KeyguardStateControllerImpl) this.keyguardStateController;
        boolean z = keyguardStateControllerImpl.mTrusted;
        this.isSecure = keyguardStateControllerImpl.mSecure;
        if (LsRune.LOCKUI_BOTTOM_USIM_TEXT) {
            setUsimTextAreaVisibility();
        }
    }

    @Override // com.android.systemui.statusbar.phone.KeyguardBottomAreaViewController, com.android.systemui.util.ViewController
    public final void onViewDetached() {
        this.keyguardUpdateMonitor.removeCallback(this.keyguardUpdateMonitorCallbackForShortcuts);
        KeyguardShortcutManager keyguardShortcutManager = this.shortcutManager;
        final KeyguardSecBottomAreaViewController$shortcutManagerCallback$1 keyguardSecBottomAreaViewController$shortcutManagerCallback$1 = this.shortcutManagerCallback;
        synchronized (keyguardShortcutManager) {
            if (keyguardShortcutManager.mCallbacks.removeIf(new Predicate() { // from class: com.android.systemui.statusbar.KeyguardShortcutManager$unregisterCallback$1$1
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    if (((WeakReference) obj).get() == KeyguardShortcutManager.ShortcutCallback.this) {
                        return true;
                    }
                    return false;
                }
            })) {
                Log.d("KeyguardShortcutManager", "Callback removed successfully , callback was : " + keyguardSecBottomAreaViewController$shortcutManagerCallback$1);
            }
            Unit unit = Unit.INSTANCE;
        }
        for (int i = 0; i < 2; i++) {
            if (keyguardShortcutManager.isTaskType(i)) {
                KeyguardQuickAffordanceConfig keyguardQuickAffordanceConfig = keyguardShortcutManager.mKeyguardBottomAreaShortcutTask[i];
            }
        }
        this.broadcastDispatcher.unregisterReceiver(this.mDevicePolicyReceiver);
        ((KeyguardStateControllerImpl) this.keyguardStateController).removeCallback(this);
        this.wakefulnessLifecycle.removeObserver(this.mWakefulnessObserver);
    }

    @Override // com.android.systemui.statusbar.phone.KeyguardBottomAreaViewController
    public final void onViewModeChanged(int i) {
        KeyguardSecBottomAreaView keyguardSecBottomAreaView = (KeyguardSecBottomAreaView) this.mView;
        boolean z = true;
        if (i != 1) {
            z = false;
        }
        keyguardSecBottomAreaView.isPluginLockOverlayView = z;
        KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("onViewModeChanged() ShortcutInvisible: ", z, "KeyguardSecBottomAreaViewController");
        KeyguardSecBottomAreaView keyguardSecBottomAreaView2 = (KeyguardSecBottomAreaView) this.mView;
        keyguardSecBottomAreaView2.updateLayout();
        keyguardSecBottomAreaView2.getUpdateLeftAffordanceIcon().invoke();
        keyguardSecBottomAreaView2.getUpdateRightAffordanceIcon().invoke();
    }

    @Override // com.android.systemui.statusbar.phone.KeyguardBottomAreaViewController
    public final void setAffordanceAlpha(float f) {
        EmergencyButton emergencyButton;
        getLeftView().setAlpha(f);
        getRightView().setAlpha(f);
        if (this.isIndicationUpdatable) {
            getIndicationArea().setAlpha(f);
        }
        ((KeyguardIndicationTextView) ((KeyguardSecBottomAreaView) this.mView).upperFPIndication$delegate.getValue()).setAlpha(f);
        LinearLayout linearLayout = ((KeyguardSecBottomAreaView) this.mView).usimTextArea;
        if (linearLayout != null) {
            Intrinsics.checkNotNull(linearLayout);
            linearLayout.setAlpha(f);
        }
        if (LsRune.LOCKUI_BOTTOM_USIM_TEXT && (emergencyButton = ((KeyguardSecBottomAreaView) this.mView).emergencyButton) != null) {
            Intrinsics.checkNotNull(emergencyButton);
            emergencyButton.setAlpha(f);
        }
        if (this.quickSettingsController.mExpanded) {
            cancelIndicationAreaAnim();
        }
    }

    @Override // com.android.systemui.statusbar.phone.KeyguardBottomAreaViewController
    public final void setDozing(boolean z) {
        this.isDozing = z;
        ((KeyguardSecBottomAreaView) this.mView).getUpdateRightAffordanceIcon().invoke();
        ((KeyguardSecBottomAreaView) this.mView).getUpdateLeftAffordanceIcon().invoke();
        if (LsRune.LOCKUI_BOTTOM_USIM_TEXT) {
            setUsimTextAreaVisibility();
        }
        Lazy lazy = this.leftShortcutArea$delegate;
        Lazy lazy2 = this.rightShortcutArea$delegate;
        Lazy lazy3 = this.bottomDozeArea$delegate;
        if (z) {
            ((FrameLayout) lazy3.getValue()).setVisibility(0);
            getIndicationArea().setVisibility(4);
            ((View) lazy2.getValue()).setVisibility(4);
            ((View) lazy.getValue()).setVisibility(4);
            return;
        }
        ((FrameLayout) lazy3.getValue()).removeAllViews();
        ((FrameLayout) lazy3.getValue()).setVisibility(4);
        getIndicationArea().setVisibility(0);
        ((View) lazy2.getValue()).setVisibility(0);
        ((View) lazy.getValue()).setVisibility(0);
    }

    @Override // com.android.systemui.statusbar.phone.KeyguardBottomAreaViewController
    public final void setUserSetupComplete(boolean z) {
        this.isUserSetupComplete = z;
        ((KeyguardSecBottomAreaView) this.mView).getUpdateRightAffordanceIcon().invoke();
        ((KeyguardSecBottomAreaView) this.mView).getUpdateLeftAffordanceIcon().invoke();
    }

    public final void setUsimTextAreaVisibility() {
        KeyguardSecBottomAreaView keyguardSecBottomAreaView = (KeyguardSecBottomAreaView) this.mView;
        LinearLayout linearLayout = keyguardSecBottomAreaView.usimTextArea;
        if (linearLayout == null) {
            return;
        }
        if (LsRune.LOCKUI_BOTTOM_USIM_TEXT) {
            int i = 8;
            if (this.isDozing) {
                Intrinsics.checkNotNull(linearLayout);
                linearLayout.setVisibility(8);
                return;
            }
            boolean isIccBlockedPermanently = this.keyguardUpdateMonitor.isIccBlockedPermanently();
            boolean z = this.isUsimTextAreaShowing;
            if (isIccBlockedPermanently) {
                LinearLayout linearLayout2 = keyguardSecBottomAreaView.usimTextArea;
                Intrinsics.checkNotNull(linearLayout2);
                if (z) {
                    i = 0;
                }
                linearLayout2.setVisibility(i);
                return;
            }
            if (!this.isSecure) {
                if (z) {
                    LinearLayout linearLayout3 = keyguardSecBottomAreaView.usimTextArea;
                    Intrinsics.checkNotNull(linearLayout3);
                    linearLayout3.setVisibility(0);
                    return;
                } else {
                    LinearLayout linearLayout4 = keyguardSecBottomAreaView.usimTextArea;
                    Intrinsics.checkNotNull(linearLayout4);
                    linearLayout4.setVisibility(8);
                    return;
                }
            }
            LinearLayout linearLayout5 = keyguardSecBottomAreaView.usimTextArea;
            Intrinsics.checkNotNull(linearLayout5);
            linearLayout5.setVisibility(8);
            return;
        }
        keyguardSecBottomAreaView.removeView(linearLayout);
        keyguardSecBottomAreaView.usimTextArea = null;
    }

    public final boolean shouldDisableShortcut() {
        if (this.mPermDisableState || this.mSavingMode || (!this.shortcutManager.mShortcutVisibleForMDM) || this.keyguardUpdateMonitor.isKidsModeRunning()) {
            return true;
        }
        if ((LsRune.KEYGUARD_FBE && !this.isUserUnlocked) || ((KeyguardSecBottomAreaView) this.mView).isPluginLockOverlayView || this.isDozing || DevicePolicyManagerExtKt.areKeyguardShortcutsDisabled$default(this.devicePolicyManager, KeyguardUpdateMonitor.getCurrentUser())) {
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.statusbar.phone.KeyguardBottomAreaViewController
    public final void updateBottomView() {
        Log.d("KeyguardSecBottomAreaViewController", "updateBottomView");
        ((KeyguardSecBottomAreaViewBinder$bind$1) ((KeyguardSecBottomAreaView) this.mView).getBinding()).updateIndicationPosition();
    }

    public final void updateCustomShortcutIcon(KeyguardSecAffordanceView keyguardSecAffordanceView, int i, boolean z) {
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5 = true;
        int i2 = 0;
        if (!shouldDisableShortcut() && z) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (keyguardSecAffordanceView == null || ((KeyguardFastBioUnlockController) Dependency.get(KeyguardFastBioUnlockController.class)).isFastWakeAndUnlockMode()) {
            return;
        }
        if (this.shortcutManager.hasShortcut(i) && this.shortcutManager.isShortcutForCamera(i) && !shouldDisableShortcut()) {
            CentralSurfaces centralSurfaces = this.centralSurfaces;
            if (centralSurfaces != null && !((CentralSurfacesImpl) centralSurfaces).isCameraAllowedByAdmin()) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (!z3 && this.shortcutManager.isLockTaskPermitted("com.sec.android.app.camera") && this.isUserSetupComplete) {
                z4 = true;
            } else {
                z4 = false;
            }
            EmergencyButtonController$$ExternalSyntheticOutline0.m("updateCameraVisibility isCameraDisabled:", z3, " visible:", z4, "KeyguardSecBottomAreaViewController");
            if (!z2 || !z4) {
                z5 = false;
            }
            z2 = z5;
        }
        if (z2) {
            if (!this.isUserSetupComplete) {
                i2 = 8;
            }
            keyguardSecAffordanceView.setVisibility(i2);
            keyguardSecAffordanceView.setImageDrawable(this.shortcutManager.getShortcutDrawable(i));
            keyguardSecAffordanceView.setContentDescription(this.shortcutManager.getShortcutContentDescription(i));
            return;
        }
        keyguardSecAffordanceView.setVisibility(8);
    }

    @Override // com.android.systemui.statusbar.phone.KeyguardBottomAreaViewController
    public final void onDensityOrFontScaleChanged() {
        onDensityOrFontScaleChanged(false);
    }

    @Override // com.android.systemui.statusbar.phone.KeyguardBottomAreaViewController, com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
    }
}
