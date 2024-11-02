package com.android.systemui.statusbar.phone;

import android.content.Context;
import android.os.Debug;
import android.os.Handler;
import android.util.Log;
import android.view.InsetsFlags;
import android.view.ViewDebug;
import com.android.internal.view.AppearanceRegion;
import com.android.keyguard.ActiveUnlockConfig$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.systemui.BasicRune;
import com.android.systemui.Dependency;
import com.android.systemui.Dumpable;
import com.android.systemui.R;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.flags.FeatureFlagsRelease;
import com.android.systemui.flags.Flags;
import com.android.systemui.navigationbar.NavigationModeController;
import com.android.systemui.navigationbar.store.NavBarStateManager;
import com.android.systemui.navigationbar.store.NavBarStore;
import com.android.systemui.navigationbar.store.NavBarStoreImpl;
import com.android.systemui.plugins.DarkIconDispatcher;
import com.android.systemui.settings.DisplayTracker;
import com.android.systemui.shared.system.QuickStepContract;
import com.android.systemui.statusbar.policy.BatteryController;
import com.android.systemui.statusbar.policy.BatteryControllerImpl;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.statusbar.policy.KeyguardStateControllerImpl;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.function.Consumer;
import kotlin.text.StringsKt__StringsKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class LightBarController implements BatteryController.BatteryStateChangeCallback, Dumpable {
    public static final float NAV_BAR_INVERSION_SCRIM_ALPHA_THRESHOLD;
    public int mAppearance;
    public AppearanceRegion[] mAppearanceRegions = new AppearanceRegion[0];
    public final BatteryController mBatteryController;
    public BiometricUnlockController mBiometricUnlockController;
    public boolean mBouncerVisible;
    public final int mDarkIconColor;
    public boolean mDirectReplying;
    public boolean mForceDarkForScrim;
    public boolean mForceLightForScrim;
    public boolean mGlobalActionsVisible;
    public boolean mHasLightNavigationBar;
    public boolean mIsCustomizingForBackNav;
    public final boolean mIsDefaultDisplay;
    public final KeyguardUpdateMonitor mKeyguardUpdateMonitor;
    public final int mLightIconColor;
    public final LightBarController$$ExternalSyntheticLambda2 mModeChangedListener;
    public final NavBarStateManager mNavBarStateManager;
    public boolean mNavbarColorManagedByIme;
    public LightBarTransitionsController mNavigationBarController;
    public int mNavigationBarMode;
    public boolean mNavigationLight;
    public int mNavigationMode;
    public final NavigationModeController mNavigationModeController;
    public final LightBarTransientObserver mObserver;
    public boolean mPanelExpanded;
    public boolean mPanelHasWhiteBg;
    public boolean mQsCustomizing;
    public boolean mQsExpanded;
    public final SamsungLightBarControlHelper mSamsungLightBarControlHelper;
    public final SamsungStatusBarGrayIconHelper mSamsungStatusBarGrayIconHelper;
    public final SysuiDarkIconDispatcher mStatusBarIconController;
    public int mStatusBarMode;
    public final boolean mUseNewLightBarLogic;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Factory {
        public final BatteryController mBatteryController;
        public final DarkIconDispatcher mDarkIconDispatcher;
        public final DisplayTracker mDisplayTracker;
        public final DumpManager mDumpManager;
        public final FeatureFlags mFeatureFlags;
        public final KeyguardUpdateMonitor mKeyguardUpdateMonitor;
        public final NavigationModeController mNavModeController;
        public final SamsungLightBarControlHelper mSamsungLightBarControlHelper;
        public final SamsungStatusBarGrayIconHelper mSamsungStatusBarGrayIconHelper;

        public Factory(DarkIconDispatcher darkIconDispatcher, BatteryController batteryController, NavigationModeController navigationModeController, FeatureFlags featureFlags, DumpManager dumpManager, DisplayTracker displayTracker, SamsungLightBarControlHelper samsungLightBarControlHelper, SamsungStatusBarGrayIconHelper samsungStatusBarGrayIconHelper, KeyguardUpdateMonitor keyguardUpdateMonitor) {
            this.mDarkIconDispatcher = darkIconDispatcher;
            this.mBatteryController = batteryController;
            this.mNavModeController = navigationModeController;
            this.mFeatureFlags = featureFlags;
            this.mDumpManager = dumpManager;
            this.mDisplayTracker = displayTracker;
            this.mSamsungLightBarControlHelper = samsungLightBarControlHelper;
            this.mSamsungStatusBarGrayIconHelper = samsungStatusBarGrayIconHelper;
            this.mKeyguardUpdateMonitor = keyguardUpdateMonitor;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class LightBarTransientObserver extends SystemBarObserver {
        public final ArrayList mList;

        public /* synthetic */ LightBarTransientObserver(int i) {
            this();
        }

        public final void notify(Consumer consumer) {
            this.mList.forEach(new LightBarController$$ExternalSyntheticLambda0(consumer, 1));
        }

        private LightBarTransientObserver() {
            this.mList = new ArrayList();
        }
    }

    static {
        float f;
        if (BasicRune.NAVBAR_LIGHTBAR) {
            f = 0.4f;
        } else {
            f = 0.1f;
        }
        NAV_BAR_INVERSION_SCRIM_ALPHA_THRESHOLD = f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.systemui.statusbar.phone.LightBarController$$ExternalSyntheticLambda2, com.android.systemui.navigationbar.NavigationModeController$ModeChangedListener] */
    public LightBarController(Context context, DarkIconDispatcher darkIconDispatcher, BatteryController batteryController, NavigationModeController navigationModeController, FeatureFlags featureFlags, DumpManager dumpManager, DisplayTracker displayTracker, SamsungLightBarControlHelper samsungLightBarControlHelper, SamsungStatusBarGrayIconHelper samsungStatusBarGrayIconHelper, KeyguardUpdateMonitor keyguardUpdateMonitor) {
        boolean z = false;
        z = false;
        final int i = z ? 1 : 0;
        ?? r1 = new NavigationModeController.ModeChangedListener(this) { // from class: com.android.systemui.statusbar.phone.LightBarController$$ExternalSyntheticLambda2
            public final /* synthetic */ LightBarController f$0;

            {
                this.f$0 = this;
            }

            @Override // com.android.systemui.navigationbar.NavigationModeController.ModeChangedListener
            public final void onNavigationModeChanged(int i2) {
                int i3 = i;
                LightBarController lightBarController = this.f$0;
                switch (i3) {
                    case 0:
                        lightBarController.mNavigationMode = i2;
                        return;
                    default:
                        lightBarController.mNavigationMode = i2;
                        return;
                }
            }
        };
        this.mModeChangedListener = r1;
        this.mPanelExpanded = false;
        this.mPanelHasWhiteBg = false;
        this.mIsDefaultDisplay = false;
        boolean z2 = BasicRune.NAVBAR_LIGHTBAR;
        if (z2) {
            this.mNavBarStateManager = ((NavBarStoreImpl) ((NavBarStore) Dependency.get(NavBarStore.class))).getNavStateManager(context.getDisplayId());
        }
        if (BasicRune.NAVBAR_SUPPORT_POLICY_VISIBILITY) {
            this.mObserver = new LightBarTransientObserver(z ? 1 : 0);
        }
        this.mSamsungLightBarControlHelper = samsungLightBarControlHelper;
        this.mSamsungStatusBarGrayIconHelper = samsungStatusBarGrayIconHelper;
        final int i2 = 1;
        if (((FeatureFlagsRelease) featureFlags).isEnabled(Flags.NEW_LIGHT_BAR_LOGIC) && !z2) {
            z = true;
        }
        this.mUseNewLightBarLogic = z;
        this.mDarkIconColor = context.getColor(R.color.dark_mode_icon_color_single_tone);
        this.mLightIconColor = context.getColor(R.color.light_mode_icon_color_single_tone);
        this.mStatusBarIconController = (SysuiDarkIconDispatcher) darkIconDispatcher;
        this.mBatteryController = batteryController;
        ((BatteryControllerImpl) batteryController).addCallback(this);
        if (BasicRune.NAVBAR_AOSP_BUG_FIX) {
            this.mNavigationModeController = navigationModeController;
            this.mNavigationBarMode = navigationModeController.addListener(r1);
        } else {
            this.mNavigationMode = navigationModeController.addListener(new NavigationModeController.ModeChangedListener(this) { // from class: com.android.systemui.statusbar.phone.LightBarController$$ExternalSyntheticLambda2
                public final /* synthetic */ LightBarController f$0;

                {
                    this.f$0 = this;
                }

                @Override // com.android.systemui.navigationbar.NavigationModeController.ModeChangedListener
                public final void onNavigationModeChanged(int i22) {
                    int i3 = i2;
                    LightBarController lightBarController = this.f$0;
                    switch (i3) {
                        case 0:
                            lightBarController.mNavigationMode = i22;
                            return;
                        default:
                            lightBarController.mNavigationMode = i22;
                            return;
                    }
                }
            });
        }
        this.mKeyguardUpdateMonitor = keyguardUpdateMonitor;
        int displayId = context.getDisplayId();
        displayTracker.getClass();
        if (displayId == 0) {
            dumpManager.getClass();
            DumpManager.registerDumpable$default(dumpManager, "LightBarController", this);
            this.mIsDefaultDisplay = true;
        }
    }

    public static boolean isLight(int i, int i2, int i3) {
        boolean z;
        boolean z2;
        if (i2 != 0 && i2 != 6) {
            z = false;
        } else {
            z = true;
        }
        if ((i & i3) != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (!z || !z2) {
            return false;
        }
        return true;
    }

    public final boolean animateChange() {
        int i;
        BiometricUnlockController biometricUnlockController = this.mBiometricUnlockController;
        if (biometricUnlockController == null || (i = biometricUnlockController.mMode) == 2 || i == 1) {
            return false;
        }
        return true;
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(final PrintWriter printWriter, final String[] strArr) {
        printWriter.println("LightBarController: ");
        printWriter.print(" mAppearance=");
        printWriter.println(ViewDebug.flagsToString(InsetsFlags.class, "appearance", this.mAppearance));
        int length = this.mAppearanceRegions.length;
        for (int i = 0; i < length; i++) {
            boolean isLight = isLight(this.mAppearanceRegions[i].getAppearance(), this.mStatusBarMode, 8);
            printWriter.print(" stack #");
            printWriter.print(i);
            printWriter.print(": ");
            printWriter.print(this.mAppearanceRegions[i].toString());
            printWriter.print(" isLight=");
            printWriter.println(isLight);
        }
        printWriter.print(" mNavigationLight=");
        printWriter.println(this.mNavigationLight);
        printWriter.print(" mHasLightNavigationBar=");
        printWriter.println(this.mHasLightNavigationBar);
        printWriter.println();
        printWriter.print(" mStatusBarMode=");
        printWriter.print(this.mStatusBarMode);
        printWriter.print(" mNavigationBarMode=");
        printWriter.println(this.mNavigationBarMode);
        printWriter.println();
        printWriter.print(" mForceDarkForScrim=");
        printWriter.println(this.mForceDarkForScrim);
        printWriter.print(" mForceLightForScrim=");
        printWriter.println(this.mForceLightForScrim);
        printWriter.println();
        printWriter.print(" mQsCustomizing=");
        printWriter.println(this.mQsCustomizing);
        printWriter.print(" mQsExpanded=");
        printWriter.println(this.mQsExpanded);
        printWriter.print(" mBouncerVisible=");
        printWriter.println(this.mBouncerVisible);
        printWriter.print(" mGlobalActionsVisible=");
        printWriter.println(this.mGlobalActionsVisible);
        printWriter.print(" mDirectReplying=");
        printWriter.println(this.mDirectReplying);
        printWriter.print(" mNavbarColorManagedByIme=");
        printWriter.println(this.mNavbarColorManagedByIme);
        printWriter.println();
        printWriter.println(" Recent Calculation Logs:");
        printWriter.print("   ");
        printWriter.println((String) null);
        printWriter.print("   ");
        printWriter.println((String) null);
        printWriter.println();
        LightBarTransitionsController lightBarTransitionsController = ((DarkIconDispatcherImpl) this.mStatusBarIconController).mTransitionsController;
        if (lightBarTransitionsController != null) {
            printWriter.println(" StatusBarTransitionsController:");
            lightBarTransitionsController.dump(printWriter, strArr);
            printWriter.println();
        }
        if (BasicRune.NAVBAR_SUPPORT_POLICY_VISIBILITY) {
            printWriter.println(" NavigationBarTransitionsController:");
            this.mObserver.notify(new Consumer() { // from class: com.android.systemui.statusbar.phone.LightBarController$$ExternalSyntheticLambda3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    PrintWriter printWriter2 = printWriter;
                    String[] strArr2 = strArr;
                    LightBarTransitionsController lightBarTransitionsController2 = (LightBarTransitionsController) obj;
                    if (lightBarTransitionsController2 != null) {
                        lightBarTransitionsController2.dump(printWriter2, strArr2);
                        printWriter2.println();
                    }
                }
            });
        } else if (this.mNavigationBarController != null) {
            printWriter.println(" NavigationBarTransitionsController:");
            this.mNavigationBarController.dump(printWriter, strArr);
            printWriter.println();
        }
        SamsungStatusBarGrayIconHelper samsungStatusBarGrayIconHelper = this.mSamsungStatusBarGrayIconHelper;
        if (samsungStatusBarGrayIconHelper != null) {
            samsungStatusBarGrayIconHelper.getClass();
            printWriter.println("SamsungStatusBarGrayIconHelper:");
            ActiveUnlockConfig$$ExternalSyntheticOutline0.m("  isGrayIcon=", samsungStatusBarGrayIconHelper.isGrayIcon, printWriter);
            int i2 = samsungStatusBarGrayIconHelper.homeIndicatorIconColor;
            printWriter.println("  homeIndicatorIconColor=" + i2 + "(0x" + Integer.toHexString(i2) + ")");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0086  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onNavigationBarAppearanceChanged(int r20, int r21, java.lang.String r22, boolean r23, boolean r24) {
        /*
            Method dump skipped, instructions count: 282
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.phone.LightBarController.onNavigationBarAppearanceChanged(int, int, java.lang.String, boolean, boolean):void");
    }

    @Override // com.android.systemui.statusbar.policy.BatteryController.BatteryStateChangeCallback
    public final void onPowerSaveChanged(boolean z) {
        reevaluate();
    }

    public final void onStatusBarAppearanceChanged(AppearanceRegion[] appearanceRegionArr, boolean z, int i, boolean z2, String str) {
        boolean z3;
        int length = appearanceRegionArr.length;
        if (this.mAppearanceRegions.length != length) {
            z3 = true;
        } else {
            z3 = false;
        }
        for (int i2 = 0; i2 < length && !z3; i2++) {
            z3 |= !appearanceRegionArr[i2].equals(this.mAppearanceRegions[i2]);
        }
        if (z3 || z || this.mIsCustomizingForBackNav || this.mSamsungStatusBarGrayIconHelper.grayAppearanceChanged) {
            this.mAppearanceRegions = appearanceRegionArr;
            if (z3) {
                this.mSamsungLightBarControlHelper.getClass();
                int i3 = SamsungLightBarControlHelperKt.$r8$clinit;
                StringBuilder sb = new StringBuilder("onStatusBarAppearanceChanged() -");
                sb.append("  sbModeChanged:" + z);
                sb.append(", statusBarMode:" + i);
                sb.append(", barState:".concat(BarTransitions.modeToString(i)));
                sb.append(", isKeyguardShowing:" + ((KeyguardStateControllerImpl) ((KeyguardStateController) Dependency.get(KeyguardStateController.class))).mShowing);
                sb.append(", navbarColorManagedByIme:" + z2);
                sb.append(", stackAppearanceChanged:" + z3);
                sb.append(", (");
                for (AppearanceRegion appearanceRegion : appearanceRegionArr) {
                    if (appearanceRegion != null) {
                        sb.append(appearanceRegion + ", ");
                    }
                }
                sb.append(")");
                if (!StringsKt__StringsKt.contains(str, "com.att", false)) {
                    sb.append(", packageName:".concat(str));
                }
                Log.d("SamsungLightBarControlHelper", sb.toString());
            }
            this.mStatusBarMode = i;
            ((Handler) Dependency.get(Dependency.MAIN_HANDLER)).post(new LightBarController$$ExternalSyntheticLambda1(this, str));
            this.mIsCustomizingForBackNav = false;
        }
        this.mNavbarColorManagedByIme = z2;
    }

    public final void reevaluate() {
        if (this.mIsDefaultDisplay) {
            onStatusBarAppearanceChanged(this.mAppearanceRegions, true, this.mStatusBarMode, this.mNavbarColorManagedByIme, "reevaluate:" + Debug.getCallers(1));
        }
        onNavigationBarAppearanceChanged(this.mAppearance, this.mNavigationBarMode, "reevaluate:" + Debug.getCallers(1), true, this.mNavbarColorManagedByIme);
    }

    public final void updateNavigation() {
        if (BasicRune.NAVBAR_SUPPORT_POLICY_VISIBILITY) {
            this.mObserver.notify(new LightBarController$$ExternalSyntheticLambda0(this, 0));
            return;
        }
        LightBarTransitionsController lightBarTransitionsController = this.mNavigationBarController;
        if (lightBarTransitionsController != null) {
            if (!BasicRune.NAVBAR_ENABLED) {
                int i = this.mNavigationMode;
                lightBarTransitionsController.getClass();
                if (!(!QuickStepContract.isGesturalMode(i))) {
                    return;
                }
            }
            this.mNavigationBarController.setIconsDark(this.mNavigationLight, animateChange());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0084  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateStatus(com.android.internal.view.AppearanceRegion[] r9, java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 254
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.phone.LightBarController.updateStatus(com.android.internal.view.AppearanceRegion[], java.lang.String):void");
    }
}
