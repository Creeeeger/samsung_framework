package com.android.systemui.navigationbar.store;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Point;
import android.provider.Settings;
import androidx.picker.adapter.layoutmanager.AutoFitGridLayoutManager$$ExternalSyntheticOutline0;
import androidx.picker.model.viewdata.AppInfoViewData$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardFaceListenModel$$ExternalSyntheticOutline0;
import com.android.systemui.BasicRune;
import com.android.systemui.Dependency;
import com.android.systemui.LsRune;
import com.android.systemui.R;
import com.android.systemui.knox.EdmMonitor;
import com.android.systemui.knox.KnoxStateMonitor;
import com.android.systemui.knox.KnoxStateMonitorImpl;
import com.android.systemui.navigationbar.SamsungNavigationBarProxy;
import com.android.systemui.navigationbar.interactor.CoverDisplayWidgetInteractor;
import com.android.systemui.navigationbar.interactor.DeviceStateInteractor;
import com.android.systemui.navigationbar.interactor.GestureNavigationSettingsInteractor;
import com.android.systemui.navigationbar.interactor.InteractorFactory;
import com.android.systemui.navigationbar.interactor.KnoxStateMonitorInteractor;
import com.android.systemui.navigationbar.layout.NavBarCoverLayoutParams;
import com.android.systemui.navigationbar.layout.NavBarLayoutParams;
import com.android.systemui.navigationbar.remoteview.NavBarRemoteView;
import com.android.systemui.navigationbar.remoteview.NavBarRemoteViewManager;
import com.android.systemui.navigationbar.store.EventTypeFactory;
import com.android.systemui.navigationbar.util.StoreLogUtil;
import com.android.systemui.statusbar.phone.CentralSurfaces;
import com.android.systemui.statusbar.phone.CentralSurfacesImpl;
import com.android.systemui.statusbar.policy.DeviceProvisionedController;
import com.android.systemui.statusbar.policy.DeviceProvisionedControllerImpl;
import com.android.systemui.util.DeviceType;
import com.android.systemui.util.SettingsHelper;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import com.samsung.android.view.SemWindowManager;
import com.samsung.systemui.splugins.navigationbar.BarLayoutParams;
import com.samsung.systemui.splugins.navigationbar.LayoutProvider;
import com.samsung.systemui.splugins.navigationbar.LayoutProviderContainer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class NavBarStateManager {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final Context context;
    public final EventTypeFactory eventTypeFactory;
    public final InteractorFactory interactorFactory;
    public LayoutProviderContainer layoutProviderContainer;
    public final StoreLogUtil logWrapper;
    public BarLayoutParams navBarLayoutParams;
    public final NavBarRemoteViewManager navBarRemoteViewManager;
    public final NavBarStore navBarStore;
    public final SettingsHelper settingsHelper;
    public States states;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    public NavBarStateManager(Context context, NavBarStore navBarStore, SettingsHelper settingsHelper, InteractorFactory interactorFactory, StoreLogUtil storeLogUtil, LayoutProviderContainer layoutProviderContainer, NavBarRemoteViewManager navBarRemoteViewManager, Point point) {
        this.context = context;
        this.navBarStore = navBarStore;
        this.settingsHelper = settingsHelper;
        this.interactorFactory = interactorFactory;
        this.logWrapper = storeLogUtil;
        this.layoutProviderContainer = layoutProviderContainer;
        this.navBarRemoteViewManager = navBarRemoteViewManager;
        boolean z = false;
        this.states = new States(point, false, false, null, 0, 0, 0, false, 0, false, false, 0, z, z, false, false, false, false, false, 0, false, false, false, false, false, 0, null, 134217726, null);
        this.navBarLayoutParams = new NavBarLayoutParams(context, this);
        EventTypeFactory.Companion.getClass();
        EventTypeFactory eventTypeFactory = EventTypeFactory.INSTANCE;
        if (eventTypeFactory == null) {
            eventTypeFactory = new EventTypeFactory(context);
            EventTypeFactory.INSTANCE = eventTypeFactory;
        }
        this.eventTypeFactory = eventTypeFactory;
        onNavigationBarCreated();
    }

    public final boolean canPlaceKeyboardButton(int i) {
        if (i != 0 && i != 2 && !DeviceType.isTablet() && !this.states.imeDownButtonForAllRotation) {
            return false;
        }
        return true;
    }

    public final boolean canShowButtonInLargeCoverIme() {
        if (isGestureMode()) {
            if (!isMultiModalAvailableInLargeCover() && !this.settingsHelper.isNavigationBarHideKeyboardButtonEnabled()) {
                return false;
            }
            return true;
        }
        return isMultiModalAvailableInLargeCover();
    }

    public final boolean canShowFloatingGameTools(boolean z) {
        boolean z2;
        boolean z3;
        boolean z4 = false;
        if (isGameMode(false)) {
            SettingsHelper settingsHelper = this.settingsHelper;
            settingsHelper.getClass();
            boolean z5 = BasicRune.NAVBAR_REMOTEVIEW;
            if (z5 && settingsHelper.mItemLists.get("game_double_swipe_enable").getIntValue() != 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2) {
                if (z5 && settingsHelper.mItemLists.get("game_show_floating_icon").getIntValue() != 0) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (!z3) {
                    z4 = true;
                }
            }
        }
        if (z) {
            Boolean valueOf = Boolean.valueOf(z4);
            logNavBarStates(valueOf, "canShowFloatingGameTools");
            Intrinsics.checkNotNull(valueOf);
            return valueOf.booleanValue();
        }
        return z4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0066, code lost:
    
        if (r0 != false) goto L37;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean canShowKeyboardButtonForRotation(int r5) {
        /*
            r4 = this;
            android.content.Context r0 = r4.context
            android.content.ContentResolver r0 = r0.getContentResolver()
            com.android.systemui.navigationbar.store.NavBarStateManager$States r1 = r4.states
            int r1 = r1.lastTaskUserId
            java.lang.String r2 = "show_keyboard_button"
            r3 = 0
            int r0 = android.provider.Settings.Secure.getIntForUser(r0, r2, r3, r1)
            r1 = 1
            if (r0 == 0) goto L17
            r0 = r1
            goto L18
        L17:
            r0 = r3
        L18:
            boolean r2 = r4.isGestureMode()
            if (r2 == 0) goto L2f
            boolean r2 = r4.supportLargeCoverScreenNavBar()
            if (r2 != 0) goto L2e
            if (r0 == 0) goto L2e
            boolean r0 = r4.canPlaceKeyboardButton(r5)
            if (r0 == 0) goto L2e
            r0 = r1
            goto L2f
        L2e:
            r0 = r3
        L2f:
            if (r0 != 0) goto L68
            boolean r0 = com.android.systemui.BasicRune.NAVBAR_MULTI_MODAL_ICON
            if (r0 == 0) goto L4b
            boolean r0 = r4.isGestureMode()
            if (r0 == 0) goto L49
            com.android.systemui.navigationbar.remoteview.NavBarRemoteViewManager r0 = r4.navBarRemoteViewManager
            boolean r0 = r0.isSetMultimodalButton()
            if (r0 == 0) goto L4b
            boolean r0 = r4.canPlaceKeyboardButton(r5)
            if (r0 == 0) goto L4b
        L49:
            r0 = r1
            goto L4c
        L4b:
            r0 = r3
        L4c:
            if (r0 != 0) goto L68
            boolean r0 = r4.isGestureMode()
            if (r0 == 0) goto L65
            com.android.systemui.util.SettingsHelper r0 = r4.settingsHelper
            boolean r0 = r0.isNavigationBarHideKeyboardButtonEnabled()
            if (r0 == 0) goto L63
            boolean r0 = r4.canPlaceKeyboardButton(r5)
            if (r0 == 0) goto L63
            goto L65
        L63:
            r0 = r3
            goto L66
        L65:
            r0 = r1
        L66:
            if (r0 == 0) goto L69
        L68:
            r3 = r1
        L69:
            java.lang.String r0 = "canShowKeyboardButtonForRotation("
            java.lang.String r1 = ")"
            java.lang.String r5 = androidx.core.os.LocaleListCompatWrapper$$ExternalSyntheticOutline0.m(r0, r5, r1)
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r3)
            r4.logNavBarStates(r0, r5)
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
            boolean r4 = r0.booleanValue()
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.store.NavBarStateManager.canShowKeyboardButtonForRotation(int):boolean");
    }

    public final int getButtonWidth(boolean z) {
        LayoutProvider layoutProvider = this.states.layoutProvider;
        Intrinsics.checkNotNull(layoutProvider);
        int buttonWidth = layoutProvider.getButtonWidth(this.states.displaySize, z);
        Integer valueOf = Integer.valueOf(buttonWidth);
        logNavBarStates(valueOf, "getButtonWidth(land: " + z + ")");
        Intrinsics.checkNotNull(valueOf);
        return valueOf.intValue();
    }

    public final String getDefaultLayout() {
        LayoutProvider layoutProvider = this.states.layoutProvider;
        Intrinsics.checkNotNull(layoutProvider);
        String layout = layoutProvider.getLayout(!r1.isNavBarButtonOrderDefault(), this.settingsHelper.getNavigationBarAlignPosition());
        logNavBarStates(layout, "getDefaultLayout");
        Intrinsics.checkNotNull(layout);
        return layout;
    }

    public final int getGestureWidth(boolean z) {
        LayoutProvider layoutProvider = this.states.layoutProvider;
        Intrinsics.checkNotNull(layoutProvider);
        int gestureWidth = layoutProvider.getGestureWidth(this.states.displaySize, z);
        Integer valueOf = Integer.valueOf(gestureWidth);
        logNavBarStates(valueOf, "getGestureWidth(land: " + z + ")");
        Intrinsics.checkNotNull(valueOf);
        return valueOf.intValue();
    }

    public final int getSpaceWidth(boolean z) {
        LayoutProvider layoutProvider = this.states.layoutProvider;
        Intrinsics.checkNotNull(layoutProvider);
        int spaceWidth = layoutProvider.getSpaceWidth(this.states.displaySize, z, isSideAndBottomGestureMode(false));
        Integer valueOf = Integer.valueOf(spaceWidth);
        logNavBarStates(valueOf, "getSpaceWidth(land: " + z + ")");
        Intrinsics.checkNotNull(valueOf);
        return valueOf.intValue();
    }

    public final boolean isBlockingGestureOnGame() {
        boolean z = false;
        if (canShowFloatingGameTools(false) && !isIMEShowing(false)) {
            z = true;
        }
        Boolean valueOf = Boolean.valueOf(z);
        logNavBarStates(valueOf, "isBlockingGestureOnGame");
        Intrinsics.checkNotNull(valueOf);
        return valueOf.booleanValue();
    }

    public final boolean isBottomGestureMode(boolean z) {
        boolean z2;
        if (this.states.navigationMode == 3) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z) {
            Boolean valueOf = Boolean.valueOf(z2);
            logNavBarStates(valueOf, "isBottomGestureMode");
            Intrinsics.checkNotNull(valueOf);
            return valueOf.booleanValue();
        }
        return z2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x002b, code lost:
    
        if (r0 != false) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean isCoverDisplayNavBarEnabled() {
        /*
            r4 = this;
            boolean r0 = r4.supportLargeCoverScreenNavBar()
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L15
            boolean r0 = r4.isLargeCoverScreenSyncEnabled()
            if (r0 != 0) goto L48
            boolean r4 = r4.isCoverLauncherNavBarEnabled()
            if (r4 == 0) goto L47
            goto L48
        L15:
            com.android.systemui.navigationbar.store.NavBarStateManager$States r0 = r4.states
            boolean r0 = r0.supportCoverScreen
            if (r0 == 0) goto L2e
            com.android.systemui.navigationbar.interactor.InteractorFactory r0 = r4.interactorFactory
            java.lang.Class<com.android.systemui.navigationbar.interactor.DeviceStateInteractor> r3 = com.android.systemui.navigationbar.interactor.DeviceStateInteractor.class
            java.lang.Object r0 = r0.get(r3)
            com.android.systemui.navigationbar.interactor.DeviceStateInteractor r0 = (com.android.systemui.navigationbar.interactor.DeviceStateInteractor) r0
            if (r0 == 0) goto L2a
            boolean r0 = r0.foldCache
            goto L2b
        L2a:
            r0 = r2
        L2b:
            if (r0 == 0) goto L2e
            goto L2f
        L2e:
            r1 = r2
        L2f:
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r1)
            java.lang.String r1 = "supportCoverScreenNavBar"
            r4.logNavBarStates(r0, r1)
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L47
            boolean r1 = r4.isCoverLauncherNavBarEnabled()
            goto L48
        L47:
            r1 = r2
        L48:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.store.NavBarStateManager.isCoverDisplayNavBarEnabled():boolean");
    }

    public final boolean isCoverLauncherNavBarEnabled() {
        Boolean bool;
        boolean z;
        boolean z2;
        boolean z3;
        if (!this.states.supportCoverScreen) {
            return false;
        }
        CoverDisplayWidgetInteractor coverDisplayWidgetInteractor = (CoverDisplayWidgetInteractor) this.interactorFactory.get(CoverDisplayWidgetInteractor.class);
        if (coverDisplayWidgetInteractor != null) {
            SettingsHelper settingsHelper = coverDisplayWidgetInteractor.settingsHelper;
            settingsHelper.getClass();
            if (LsRune.SUBSCREEN_WATCHFACE && settingsHelper.mItemLists.get("show_navigation_for_subscreen").getIntValue() != 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2 && SemWindowManager.getInstance().isFolded()) {
                z3 = true;
            } else {
                z3 = false;
            }
            bool = Boolean.valueOf(z3);
        } else {
            bool = null;
        }
        logNavBarStates(bool, "isCoverLauncherNavBarEnabled");
        if (bool != null) {
            z = bool.booleanValue();
        } else {
            z = false;
        }
        if (!z) {
            return false;
        }
        return true;
    }

    public final boolean isGameMode(boolean z) {
        boolean z2;
        NavBarRemoteView navBarRemoteView = (NavBarRemoteView) this.navBarRemoteViewManager.leftViewList.peek();
        if (navBarRemoteView != null) {
            z2 = Intrinsics.areEqual("com.samsung.android.game.gametools", navBarRemoteView.requestClass);
        } else {
            z2 = false;
        }
        if (z) {
            Boolean valueOf = Boolean.valueOf(z2);
            logNavBarStates(valueOf, "isGameMode");
            Intrinsics.checkNotNull(valueOf);
            return valueOf.booleanValue();
        }
        return z2;
    }

    public final boolean isGestureHintEnabled() {
        return this.settingsHelper.isNavigationBarGestureHintEnabled();
    }

    public final boolean isGestureMode() {
        if (!isBottomGestureMode(false) && !isSideAndBottomGestureMode(false)) {
            return false;
        }
        return true;
    }

    public final boolean isIMEShowing(boolean z) {
        boolean z2 = true;
        if ((this.states.iconHint & 1) == 0) {
            z2 = false;
        }
        if (z) {
            Boolean valueOf = Boolean.valueOf(z2);
            logNavBarStates(valueOf, "isIMEShowing");
            Intrinsics.checkNotNull(valueOf);
            return valueOf.booleanValue();
        }
        return z2;
    }

    public final boolean isLargeCoverScreenSyncEnabled() {
        boolean z;
        if (!this.states.supportLargeCoverScreen) {
            return false;
        }
        SettingsHelper settingsHelper = this.settingsHelper;
        settingsHelper.getClass();
        if (BasicRune.NAVBAR_SUPPORT_LARGE_COVER_SCREEN && settingsHelper.mItemLists.get("large_cover_screen_navigation").getIntValue() != 0) {
            z = true;
        } else {
            z = false;
        }
        Boolean valueOf = Boolean.valueOf(z);
        logNavBarStates(valueOf, "isLargeCoverScreenSyncEnabled");
        Intrinsics.checkNotNull(valueOf);
        if (!valueOf.booleanValue()) {
            return false;
        }
        return true;
    }

    public final boolean isLargeCoverTaskEnabled() {
        DeviceStateInteractor deviceStateInteractor = (DeviceStateInteractor) this.interactorFactory.get(DeviceStateInteractor.class);
        if (deviceStateInteractor != null) {
            return deviceStateInteractor.coverTaskCache;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0090, code lost:
    
        r3 = r12.states;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0092, code lost:
    
        if (r0 != 1) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0094, code lost:
    
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0095, code lost:
    
        r3.multiModalForLargeCover = java.lang.Boolean.valueOf(r2);
        android.util.Log.d("NavBarStateManager", "multiModalForLargeCover : " + r12.states.multiModalForLargeCover);
        r12 = r12.states.multiModalForLargeCover;
        kotlin.jvm.internal.Intrinsics.checkNotNull(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00bc, code lost:
    
        return r12.booleanValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x008d, code lost:
    
        if (r11 == null) goto L40;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean isMultiModalAvailableInLargeCover() {
        /*
            r12 = this;
            boolean r0 = r12.supportLargeCoverScreenNavBar()
            java.lang.String r1 = "NavBarStateManager"
            r2 = 0
            if (r0 != 0) goto L10
            java.lang.String r12 = "multiModalForLargeCover = false (not in cover display)"
            android.util.Log.d(r1, r12)
            return r2
        L10:
            com.android.systemui.navigationbar.store.NavBarStateManager$States r0 = r12.states
            java.lang.Boolean r0 = r0.multiModalForLargeCover
            if (r0 == 0) goto L1e
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
            boolean r12 = r0.booleanValue()
            return r12
        L1e:
            java.lang.String r0 = "content://com.samsung.android.honeyboard.provider.KeyboardSettingsProvider"
            java.lang.String r3 = "cover_voice_icon"
            java.lang.String[] r8 = new java.lang.String[]{r3}
            r10 = 1
            r11 = 0
            android.content.Context r4 = r12.context     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            android.content.ContentResolver r4 = r4.getContentResolver()     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            android.net.Uri r5 = android.net.Uri.parse(r0)     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            r6 = 0
            r7 = 0
            r9 = 0
            android.database.Cursor r11 = r4.query(r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            r0 = r2
            if (r11 == 0) goto L6f
        L3c:
            boolean r4 = r11.moveToNext()     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L75
            if (r4 == 0) goto L6f
            java.lang.String r4 = "NAME"
            int r4 = r11.getColumnIndex(r4)     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L75
            r5 = -1
            if (r4 == r5) goto L3c
            java.lang.String r4 = r11.getString(r4)     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L75
            if (r4 == 0) goto L3c
            int r5 = r4.length()     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L75
            if (r5 <= 0) goto L59
            r5 = r10
            goto L5a
        L59:
            r5 = r2
        L5a:
            if (r5 == 0) goto L3c
            boolean r4 = kotlin.jvm.internal.Intrinsics.areEqual(r4, r3)     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L75
            if (r4 == 0) goto L3c
            java.lang.String r4 = "VALUE"
            int r4 = r11.getColumnIndex(r4)     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L75
            int r0 = r11.getInt(r4)     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L75
            goto L3c
        L6d:
            r3 = move-exception
            goto L79
        L6f:
            if (r11 == 0) goto L90
        L71:
            r11.close()
            goto L90
        L75:
            r12 = move-exception
            goto Lbd
        L77:
            r3 = move-exception
            r0 = r2
        L79:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L75
            r4.<init>()     // Catch: java.lang.Throwable -> L75
            java.lang.String r5 = "Failed to retrieve cover_voice_icon. "
            r4.append(r5)     // Catch: java.lang.Throwable -> L75
            r4.append(r3)     // Catch: java.lang.Throwable -> L75
            java.lang.String r3 = r4.toString()     // Catch: java.lang.Throwable -> L75
            android.util.Log.e(r1, r3)     // Catch: java.lang.Throwable -> L75
            if (r11 == 0) goto L90
            goto L71
        L90:
            com.android.systemui.navigationbar.store.NavBarStateManager$States r3 = r12.states
            if (r0 != r10) goto L95
            r2 = r10
        L95:
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r2)
            r3.multiModalForLargeCover = r0
            com.android.systemui.navigationbar.store.NavBarStateManager$States r0 = r12.states
            java.lang.Boolean r0 = r0.multiModalForLargeCover
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "multiModalForLargeCover : "
            r2.<init>(r3)
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            android.util.Log.d(r1, r0)
            com.android.systemui.navigationbar.store.NavBarStateManager$States r12 = r12.states
            java.lang.Boolean r12 = r12.multiModalForLargeCover
            kotlin.jvm.internal.Intrinsics.checkNotNull(r12)
            boolean r12 = r12.booleanValue()
            return r12
        Lbd:
            if (r11 == 0) goto Lc2
            r11.close()
        Lc2:
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.store.NavBarStateManager.isMultiModalAvailableInLargeCover():boolean");
    }

    public final boolean isNavBarButtonForcedVisible() {
        GestureNavigationSettingsInteractor gestureNavigationSettingsInteractor = (GestureNavigationSettingsInteractor) this.interactorFactory.get(GestureNavigationSettingsInteractor.class);
        if (gestureNavigationSettingsInteractor != null) {
            return gestureNavigationSettingsInteractor.buttonForcedVisible;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0031, code lost:
    
        if (r3 != false) goto L17;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean isNavBarHidden() {
        /*
            r3 = this;
            boolean r0 = r3.isNavBarHiddenByKnox()
            r1 = 1
            if (r0 != 0) goto L3b
            java.lang.Class<com.android.systemui.util.DesktopManager> r0 = com.android.systemui.util.DesktopManager.class
            java.lang.Object r0 = com.android.systemui.Dependency.get(r0)
            com.android.systemui.util.DesktopManager r0 = (com.android.systemui.util.DesktopManager) r0
            com.android.systemui.util.DesktopManagerImpl r0 = (com.android.systemui.util.DesktopManagerImpl) r0
            boolean r0 = r0.isStandalone()
            r2 = 0
            if (r0 != 0) goto L36
            boolean r0 = com.android.systemui.BasicRune.NAVBAR_NEW_DEX
            if (r0 == 0) goto L34
            com.android.systemui.navigationbar.interactor.InteractorFactory r3 = r3.interactorFactory
            java.lang.Class<com.android.systemui.navigationbar.interactor.DesktopModeInteractor> r0 = com.android.systemui.navigationbar.interactor.DesktopModeInteractor.class
            java.lang.Object r3 = r3.get(r0)
            com.android.systemui.navigationbar.interactor.DesktopModeInteractor r3 = (com.android.systemui.navigationbar.interactor.DesktopModeInteractor) r3
            if (r3 == 0) goto L30
            boolean r3 = r3.isEnabled()
            if (r3 != r1) goto L30
            r3 = r1
            goto L31
        L30:
            r3 = r2
        L31:
            if (r3 == 0) goto L34
            goto L36
        L34:
            r3 = r2
            goto L37
        L36:
            r3 = r1
        L37:
            if (r3 == 0) goto L3a
            goto L3b
        L3a:
            r1 = r2
        L3b:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.store.NavBarStateManager.isNavBarHidden():boolean");
    }

    public final boolean isNavBarHiddenByKnox() {
        boolean z;
        EdmMonitor edmMonitor;
        if (((KnoxStateMonitorInteractor) this.interactorFactory.get(KnoxStateMonitorInteractor.class)) != null && (edmMonitor = ((KnoxStateMonitorImpl) ((KnoxStateMonitor) Dependency.get(KnoxStateMonitor.class))).mEdmMonitor) != null && edmMonitor.mIsNavigationBarHidden) {
            z = true;
        } else {
            z = false;
        }
        Boolean valueOf = Boolean.valueOf(z);
        logNavBarStates(valueOf, "isNavBarHiddenByKnox");
        Intrinsics.checkNotNull(valueOf);
        return valueOf.booleanValue();
    }

    public final boolean isNavigationBarUseThemeDefault() {
        SettingsHelper settingsHelper = this.settingsHelper;
        settingsHelper.getClass();
        boolean z = true;
        if (BasicRune.NAVBAR_ENABLED && settingsHelper.mItemLists.get("navigationbar_use_theme_default").getIntValue() != 1) {
            z = false;
        }
        Boolean valueOf = Boolean.valueOf(z);
        logNavBarStates(valueOf, "isNavigationBarUseThemeDefault");
        Intrinsics.checkNotNull(valueOf);
        return valueOf.booleanValue();
    }

    public final boolean isOpaqueNavigationBar() {
        int i = this.states.transitionMode;
        if (i != 4 && i != 3 && (i != 8 || isNavigationBarUseThemeDefault())) {
            return false;
        }
        return true;
    }

    public final boolean isSideAndBottomGestureMode(boolean z) {
        boolean z2;
        if (this.states.navigationMode == 2) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z) {
            Boolean valueOf = Boolean.valueOf(z2);
            logNavBarStates(valueOf, "isSideAndBottomGestureMode");
            Intrinsics.checkNotNull(valueOf);
            return valueOf.booleanValue();
        }
        return z2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:79:0x0148, code lost:
    
        if (com.android.systemui.util.DeviceType.isTablet() == false) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0154, code lost:
    
        if (r13 == false) goto L106;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:109:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:91:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0141  */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r16v0, types: [com.android.systemui.navigationbar.store.NavBarStateManager] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v2, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r6v20 */
    /* JADX WARN: Type inference failed for: r6v21 */
    /* JADX WARN: Type inference failed for: r6v23 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean isTaskBarEnabled(boolean r17) {
        /*
            Method dump skipped, instructions count: 383
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.store.NavBarStateManager.isTaskBarEnabled(boolean):boolean");
    }

    public final void logNavBarStates(Object obj, String str) {
        StringBuilder m = KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1$$ExternalSyntheticOutline0.m("NavBarStates(", this.context.getDisplayId(), ") ", str, ": ");
        m.append(obj);
        String sb = m.toString();
        StoreLogUtil storeLogUtil = this.logWrapper;
        if (storeLogUtil.allowLogging) {
            storeLogUtil.printLog(storeLogUtil.lastDepth, sb);
        }
    }

    public final void onNavigationBarCreated() {
        boolean z;
        boolean z2;
        boolean z3;
        States states = this.states;
        int displayId = this.context.getDisplayId();
        boolean z4 = false;
        if (BasicRune.NAVBAR_SUPPORT_COVER_DISPLAY && displayId == 1) {
            z = true;
        } else {
            z = false;
        }
        states.supportCoverScreen = z;
        if (BasicRune.NAVBAR_SUPPORT_LARGE_COVER_SCREEN && displayId == 1) {
            z2 = true;
        } else {
            z2 = false;
        }
        states.supportLargeCoverScreen = z2;
        EventTypeFactory eventTypeFactory = this.eventTypeFactory;
        Context context = eventTypeFactory.context;
        Resources resources = context.getResources();
        List list = eventTypeFactory.updatableEvents;
        ArrayList arrayList = (ArrayList) list;
        arrayList.clear();
        arrayList.add(new EventTypeFactory.EventType.OnConfigChanged(resources.getConfiguration()));
        if (resources.getBoolean(17891775) && !DeviceType.isTablet()) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (resources.getBoolean(R.bool.config_navBarSupportPhoneLayoutProvider) && !DeviceType.isTablet()) {
            z4 = true;
        }
        arrayList.add(new EventTypeFactory.EventType.OnNavBarConfigChanged(z3, z4, resources.getBoolean(17891778), resources.getInteger(android.R.integer.kg_security_flipper_weight)));
        arrayList.add(new EventTypeFactory.EventType.OnRotationChanged(context.getResources().getConfiguration().windowConfiguration.getRotation()));
        arrayList.add(new EventTypeFactory.EventType.OnDeviceProvisionedChanged(((DeviceProvisionedControllerImpl) ((DeviceProvisionedController) Dependency.get(DeviceProvisionedController.class))).isDeviceProvisioned()));
        Iterator it = CollectionsKt___CollectionsKt.toList(list).iterator();
        while (it.hasNext()) {
            updateStateFromEvent((EventTypeFactory.EventType) it.next());
        }
        updateLayoutProvider();
    }

    public final boolean shouldShowSUWStyle() {
        boolean z;
        States states = this.states;
        if ((!states.deviceProvisioned || !states.userSetupCompleted) && !((CentralSurfacesImpl) ((CentralSurfaces) ((NavBarStoreImpl) this.navBarStore).getModule(CentralSurfaces.class, 0))).isKeyguardShowing()) {
            z = true;
        } else {
            z = false;
        }
        if (z || isNavBarButtonForcedVisible()) {
            return true;
        }
        return false;
    }

    public final boolean supportLargeCoverScreenNavBar() {
        boolean z;
        boolean z2 = false;
        if (this.states.supportLargeCoverScreen) {
            DeviceStateInteractor deviceStateInteractor = (DeviceStateInteractor) this.interactorFactory.get(DeviceStateInteractor.class);
            if (deviceStateInteractor != null) {
                z = deviceStateInteractor.foldCache;
            } else {
                z = false;
            }
            if (z) {
                z2 = true;
            }
        }
        Boolean valueOf = Boolean.valueOf(z2);
        logNavBarStates(valueOf, "supportLargeCoverScreenNavBar");
        Intrinsics.checkNotNull(valueOf);
        return valueOf.booleanValue();
    }

    public final void updateLayoutProvider() {
        StoreLogUtil storeLogUtil = this.logWrapper;
        if (storeLogUtil.allowLogging) {
            storeLogUtil.printLog(storeLogUtil.lastDepth, "updateLayoutProvider()");
        }
        States states = this.states;
        states.layoutProvider = this.layoutProviderContainer.updateLayoutProvider(supportLargeCoverScreenNavBar(), states.supportPhoneLayoutProvider);
    }

    public final void updateStateFromEvent(EventTypeFactory.EventType eventType) {
        BarLayoutParams navBarLayoutParams;
        boolean z;
        States states = this.states;
        boolean z2 = true;
        if (eventType instanceof EventTypeFactory.EventType.OnConfigChanged) {
            Configuration configuration = ((EventTypeFactory.EventType.OnConfigChanged) eventType).newConfig;
            states.rotation = configuration.windowConfiguration.getRotation();
            if ((configuration.uiMode & 32) != 0) {
                z = true;
            } else {
                z = false;
            }
            states.darkMode = z;
            Point point = new Point();
            point.set(configuration.windowConfiguration.getBounds().width(), configuration.windowConfiguration.getBounds().height());
            Point point2 = states.displaySize;
            if (Math.min(point2.x, point2.y) == Math.min(point.x, point.y)) {
                z2 = false;
            }
            states.displayChanged = z2;
            states.displaySize = point;
            return;
        }
        if (eventType instanceof EventTypeFactory.EventType.OnNavBarConfigChanged) {
            EventTypeFactory.EventType.OnNavBarConfigChanged onNavBarConfigChanged = (EventTypeFactory.EventType.OnNavBarConfigChanged) eventType;
            states.canMove = onNavBarConfigChanged.canMove;
            states.supportPhoneLayoutProvider = onNavBarConfigChanged.supportPhoneLayoutProvider;
            states.imeDownButtonForAllRotation = onNavBarConfigChanged.imeDownButtonForAllRotation;
            states.navigationMode = onNavBarConfigChanged.navigationMode;
            states.displayChanged = false;
            states.layoutProvider = this.layoutProviderContainer.updateLayoutProvider(supportLargeCoverScreenNavBar(), onNavBarConfigChanged.supportPhoneLayoutProvider);
            SamsungNavigationBarProxy.Companion.getClass();
            if (SamsungNavigationBarProxy.INSTANCE == null) {
                SamsungNavigationBarProxy.INSTANCE = new SamsungNavigationBarProxy();
            }
            updateLayoutProvider();
            return;
        }
        if (eventType instanceof EventTypeFactory.EventType.OnRotationChanged) {
            states.rotation = ((EventTypeFactory.EventType.OnRotationChanged) eventType).rotation;
            return;
        }
        if (eventType instanceof EventTypeFactory.EventType.OnDeviceProvisionedChanged) {
            states.deviceProvisioned = ((EventTypeFactory.EventType.OnDeviceProvisionedChanged) eventType).provisioned;
            return;
        }
        if (eventType instanceof EventTypeFactory.EventType.OnNavBarIconHintChanged) {
            states.iconHint = ((EventTypeFactory.EventType.OnNavBarIconHintChanged) eventType).iconHint;
            return;
        }
        if (eventType instanceof EventTypeFactory.EventType.OnEdgeBackGestureDisabledByPolicyChanged) {
            states.gestureDisabledByPolicy = ((EventTypeFactory.EventType.OnEdgeBackGestureDisabledByPolicyChanged) eventType).disabled;
            return;
        }
        if (eventType instanceof EventTypeFactory.EventType.OnUpdateSpayVisibility) {
            states.sPayShowing = ((EventTypeFactory.EventType.OnUpdateSpayVisibility) eventType).showing;
            return;
        }
        if (eventType instanceof EventTypeFactory.EventType.OnSetGestureHintVisibility) {
            EventTypeFactory.EventType.OnSetGestureHintVisibility onSetGestureHintVisibility = (EventTypeFactory.EventType.OnSetGestureHintVisibility) eventType;
            states.recentVisible = onSetGestureHintVisibility.recentVisible;
            states.homeVisible = onSetGestureHintVisibility.homeVisible;
            states.backVisible = onSetGestureHintVisibility.backVisible;
            return;
        }
        if (eventType instanceof EventTypeFactory.EventType.OnHardKeyIntentPolicyChanged) {
            states.hardKeyIntentPolicy = ((EventTypeFactory.EventType.OnHardKeyIntentPolicyChanged) eventType).intentStatus;
            return;
        }
        if (eventType instanceof EventTypeFactory.EventType.OnNavBarTransitionModeChanged) {
            states.transitionMode = ((EventTypeFactory.EventType.OnNavBarTransitionModeChanged) eventType).transitionMode;
            return;
        }
        if (eventType instanceof EventTypeFactory.EventType.OnUpdateRegionSamplingListener) {
            states.regionSamplingEnabled = ((EventTypeFactory.EventType.OnUpdateRegionSamplingListener) eventType).registered;
            return;
        }
        if (eventType instanceof EventTypeFactory.EventType.OnLayoutContainerChanged) {
            this.layoutProviderContainer = ((EventTypeFactory.EventType.OnLayoutContainerChanged) eventType).layoutProviderContainer;
            updateLayoutProvider();
            return;
        }
        if (eventType instanceof EventTypeFactory.EventType.OnSetDisableFlags) {
            EventTypeFactory.EventType.OnSetDisableFlags onSetDisableFlags = (EventTypeFactory.EventType.OnSetDisableFlags) eventType;
            states.disable1 = onSetDisableFlags.disable1;
            states.disable2 = onSetDisableFlags.disable2;
            return;
        }
        if (eventType instanceof EventTypeFactory.EventType.OnBarLayoutParamsProviderChanged) {
            BarLayoutParams barLayoutParams = ((EventTypeFactory.EventType.OnBarLayoutParamsProviderChanged) eventType).layoutParamsProvider;
            if (barLayoutParams == null) {
                boolean supportLargeCoverScreenNavBar = supportLargeCoverScreenNavBar();
                Context context = this.context;
                if (supportLargeCoverScreenNavBar) {
                    navBarLayoutParams = new NavBarCoverLayoutParams(context, this);
                } else {
                    navBarLayoutParams = new NavBarLayoutParams(context, this);
                }
                this.navBarLayoutParams = navBarLayoutParams;
                return;
            }
            this.navBarLayoutParams = barLayoutParams;
            return;
        }
        if (eventType instanceof EventTypeFactory.EventType.OnCoverRotationChanged) {
            states.rotation = ((EventTypeFactory.EventType.OnCoverRotationChanged) eventType).rotation;
            states.layoutProvider = this.layoutProviderContainer.updateLayoutProvider(supportLargeCoverScreenNavBar(), true);
        }
    }

    public final void updateUseThemeDefault() {
        boolean z;
        SettingsHelper settingsHelper = this.settingsHelper;
        String activeThemePackage = settingsHelper.getActiveThemePackage();
        int i = 1;
        if (activeThemePackage != null && activeThemePackage.length() > 0) {
            z = true;
        } else {
            z = false;
        }
        if (!z && !settingsHelper.isColorThemeEnabled$1()) {
            i = 0;
        }
        Settings.Global.putInt(settingsHelper.mResolver, "navigationbar_use_theme_default", i);
    }

    public /* synthetic */ NavBarStateManager(Context context, NavBarStore navBarStore, SettingsHelper settingsHelper, InteractorFactory interactorFactory, StoreLogUtil storeLogUtil, LayoutProviderContainer layoutProviderContainer, NavBarRemoteViewManager navBarRemoteViewManager, Point point, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, navBarStore, settingsHelper, interactorFactory, storeLogUtil, layoutProviderContainer, navBarRemoteViewManager, (i & 128) != 0 ? new Point() : point);
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class States {
        public boolean backVisible;
        public boolean canMove;
        public boolean darkMode;
        public boolean deviceProvisioned;
        public int disable1;
        public int disable2;
        public boolean displayChanged;
        public Point displaySize;
        public boolean gestureDisabledByPolicy;
        public boolean hardKeyIntentPolicy;
        public boolean homeVisible;
        public int iconHint;
        public boolean imeDownButtonForAllRotation;
        public int lastTaskUserId;
        public boolean layoutChangedBeforeAttached;
        public LayoutProvider layoutProvider;
        public Boolean multiModalForLargeCover;
        public int navigationMode;
        public boolean recentVisible;
        public boolean regionSamplingEnabled;
        public int rotation;
        public boolean sPayShowing;
        public boolean supportCoverScreen;
        public boolean supportLargeCoverScreen;
        public boolean supportPhoneLayoutProvider;
        public int transitionMode;
        public boolean userSetupCompleted;

        public States(Point point, boolean z, boolean z2, LayoutProvider layoutProvider, int i, int i2, int i3, boolean z3, int i4, boolean z4, boolean z5, int i5, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, boolean z11, boolean z12, int i6, boolean z13, boolean z14, boolean z15, boolean z16, boolean z17, int i7, Boolean bool) {
            this.displaySize = point;
            this.canMove = z;
            this.supportPhoneLayoutProvider = z2;
            this.layoutProvider = layoutProvider;
            this.navigationMode = i;
            this.disable1 = i2;
            this.disable2 = i3;
            this.darkMode = z3;
            this.rotation = i4;
            this.deviceProvisioned = z4;
            this.userSetupCompleted = z5;
            this.iconHint = i5;
            this.sPayShowing = z6;
            this.gestureDisabledByPolicy = z7;
            this.recentVisible = z8;
            this.homeVisible = z9;
            this.backVisible = z10;
            this.hardKeyIntentPolicy = z11;
            this.imeDownButtonForAllRotation = z12;
            this.transitionMode = i6;
            this.regionSamplingEnabled = z13;
            this.displayChanged = z14;
            this.layoutChangedBeforeAttached = z15;
            this.supportCoverScreen = z16;
            this.supportLargeCoverScreen = z17;
            this.lastTaskUserId = i7;
            this.multiModalForLargeCover = bool;
        }

        public static States copy$default(States states) {
            Point point = states.displaySize;
            boolean z = states.canMove;
            boolean z2 = states.supportPhoneLayoutProvider;
            LayoutProvider layoutProvider = states.layoutProvider;
            int i = states.navigationMode;
            int i2 = states.disable1;
            int i3 = states.disable2;
            boolean z3 = states.darkMode;
            int i4 = states.rotation;
            boolean z4 = states.deviceProvisioned;
            boolean z5 = states.userSetupCompleted;
            int i5 = states.iconHint;
            boolean z6 = states.sPayShowing;
            boolean z7 = states.gestureDisabledByPolicy;
            boolean z8 = states.recentVisible;
            boolean z9 = states.homeVisible;
            boolean z10 = states.backVisible;
            boolean z11 = states.hardKeyIntentPolicy;
            boolean z12 = states.imeDownButtonForAllRotation;
            int i6 = states.transitionMode;
            boolean z13 = states.regionSamplingEnabled;
            boolean z14 = states.displayChanged;
            boolean z15 = states.layoutChangedBeforeAttached;
            boolean z16 = states.supportCoverScreen;
            boolean z17 = states.supportLargeCoverScreen;
            int i7 = states.lastTaskUserId;
            Boolean bool = states.multiModalForLargeCover;
            states.getClass();
            return new States(point, z, z2, layoutProvider, i, i2, i3, z3, i4, z4, z5, i5, z6, z7, z8, z9, z10, z11, z12, i6, z13, z14, z15, z16, z17, i7, bool);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof States)) {
                return false;
            }
            States states = (States) obj;
            if (Intrinsics.areEqual(this.displaySize, states.displaySize) && this.canMove == states.canMove && this.supportPhoneLayoutProvider == states.supportPhoneLayoutProvider && Intrinsics.areEqual(this.layoutProvider, states.layoutProvider) && this.navigationMode == states.navigationMode && this.disable1 == states.disable1 && this.disable2 == states.disable2 && this.darkMode == states.darkMode && this.rotation == states.rotation && this.deviceProvisioned == states.deviceProvisioned && this.userSetupCompleted == states.userSetupCompleted && this.iconHint == states.iconHint && this.sPayShowing == states.sPayShowing && this.gestureDisabledByPolicy == states.gestureDisabledByPolicy && this.recentVisible == states.recentVisible && this.homeVisible == states.homeVisible && this.backVisible == states.backVisible && this.hardKeyIntentPolicy == states.hardKeyIntentPolicy && this.imeDownButtonForAllRotation == states.imeDownButtonForAllRotation && this.transitionMode == states.transitionMode && this.regionSamplingEnabled == states.regionSamplingEnabled && this.displayChanged == states.displayChanged && this.layoutChangedBeforeAttached == states.layoutChangedBeforeAttached && this.supportCoverScreen == states.supportCoverScreen && this.supportLargeCoverScreen == states.supportLargeCoverScreen && this.lastTaskUserId == states.lastTaskUserId && Intrinsics.areEqual(this.multiModalForLargeCover, states.multiModalForLargeCover)) {
                return true;
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final int hashCode() {
            int hashCode;
            int hashCode2 = this.displaySize.hashCode() * 31;
            boolean z = this.canMove;
            int i = 1;
            int i2 = z;
            if (z != 0) {
                i2 = 1;
            }
            int i3 = (hashCode2 + i2) * 31;
            boolean z2 = this.supportPhoneLayoutProvider;
            int i4 = z2;
            if (z2 != 0) {
                i4 = 1;
            }
            int i5 = (i3 + i4) * 31;
            LayoutProvider layoutProvider = this.layoutProvider;
            int i6 = 0;
            if (layoutProvider == null) {
                hashCode = 0;
            } else {
                hashCode = layoutProvider.hashCode();
            }
            int m = AppInfoViewData$$ExternalSyntheticOutline0.m(this.disable2, AppInfoViewData$$ExternalSyntheticOutline0.m(this.disable1, AppInfoViewData$$ExternalSyntheticOutline0.m(this.navigationMode, (i5 + hashCode) * 31, 31), 31), 31);
            boolean z3 = this.darkMode;
            int i7 = z3;
            if (z3 != 0) {
                i7 = 1;
            }
            int m2 = AppInfoViewData$$ExternalSyntheticOutline0.m(this.rotation, (m + i7) * 31, 31);
            boolean z4 = this.deviceProvisioned;
            int i8 = z4;
            if (z4 != 0) {
                i8 = 1;
            }
            int i9 = (m2 + i8) * 31;
            boolean z5 = this.userSetupCompleted;
            int i10 = z5;
            if (z5 != 0) {
                i10 = 1;
            }
            int m3 = AppInfoViewData$$ExternalSyntheticOutline0.m(this.iconHint, (i9 + i10) * 31, 31);
            boolean z6 = this.sPayShowing;
            int i11 = z6;
            if (z6 != 0) {
                i11 = 1;
            }
            int i12 = (m3 + i11) * 31;
            boolean z7 = this.gestureDisabledByPolicy;
            int i13 = z7;
            if (z7 != 0) {
                i13 = 1;
            }
            int i14 = (i12 + i13) * 31;
            boolean z8 = this.recentVisible;
            int i15 = z8;
            if (z8 != 0) {
                i15 = 1;
            }
            int i16 = (i14 + i15) * 31;
            boolean z9 = this.homeVisible;
            int i17 = z9;
            if (z9 != 0) {
                i17 = 1;
            }
            int i18 = (i16 + i17) * 31;
            boolean z10 = this.backVisible;
            int i19 = z10;
            if (z10 != 0) {
                i19 = 1;
            }
            int i20 = (i18 + i19) * 31;
            boolean z11 = this.hardKeyIntentPolicy;
            int i21 = z11;
            if (z11 != 0) {
                i21 = 1;
            }
            int i22 = (i20 + i21) * 31;
            boolean z12 = this.imeDownButtonForAllRotation;
            int i23 = z12;
            if (z12 != 0) {
                i23 = 1;
            }
            int m4 = AppInfoViewData$$ExternalSyntheticOutline0.m(this.transitionMode, (i22 + i23) * 31, 31);
            boolean z13 = this.regionSamplingEnabled;
            int i24 = z13;
            if (z13 != 0) {
                i24 = 1;
            }
            int i25 = (m4 + i24) * 31;
            boolean z14 = this.displayChanged;
            int i26 = z14;
            if (z14 != 0) {
                i26 = 1;
            }
            int i27 = (i25 + i26) * 31;
            boolean z15 = this.layoutChangedBeforeAttached;
            int i28 = z15;
            if (z15 != 0) {
                i28 = 1;
            }
            int i29 = (i27 + i28) * 31;
            boolean z16 = this.supportCoverScreen;
            int i30 = z16;
            if (z16 != 0) {
                i30 = 1;
            }
            int i31 = (i29 + i30) * 31;
            boolean z17 = this.supportLargeCoverScreen;
            if (!z17) {
                i = z17 ? 1 : 0;
            }
            int m5 = AppInfoViewData$$ExternalSyntheticOutline0.m(this.lastTaskUserId, (i31 + i) * 31, 31);
            Boolean bool = this.multiModalForLargeCover;
            if (bool != null) {
                i6 = bool.hashCode();
            }
            return m5 + i6;
        }

        public final String toString() {
            Point point = this.displaySize;
            boolean z = this.canMove;
            boolean z2 = this.supportPhoneLayoutProvider;
            LayoutProvider layoutProvider = this.layoutProvider;
            int i = this.navigationMode;
            int i2 = this.disable1;
            int i3 = this.disable2;
            boolean z3 = this.darkMode;
            int i4 = this.rotation;
            boolean z4 = this.deviceProvisioned;
            boolean z5 = this.userSetupCompleted;
            int i5 = this.iconHint;
            boolean z6 = this.sPayShowing;
            boolean z7 = this.gestureDisabledByPolicy;
            boolean z8 = this.recentVisible;
            boolean z9 = this.homeVisible;
            boolean z10 = this.backVisible;
            boolean z11 = this.hardKeyIntentPolicy;
            boolean z12 = this.imeDownButtonForAllRotation;
            int i6 = this.transitionMode;
            boolean z13 = this.regionSamplingEnabled;
            boolean z14 = this.displayChanged;
            boolean z15 = this.layoutChangedBeforeAttached;
            boolean z16 = this.supportCoverScreen;
            boolean z17 = this.supportLargeCoverScreen;
            int i7 = this.lastTaskUserId;
            Boolean bool = this.multiModalForLargeCover;
            StringBuilder sb = new StringBuilder("States(displaySize=");
            sb.append(point);
            sb.append(", canMove=");
            sb.append(z);
            sb.append(", supportPhoneLayoutProvider=");
            sb.append(z2);
            sb.append(", layoutProvider=");
            sb.append(layoutProvider);
            sb.append(", navigationMode=");
            AutoFitGridLayoutManager$$ExternalSyntheticOutline0.m(sb, i, ", disable1=", i2, ", disable2=");
            sb.append(i3);
            sb.append(", darkMode=");
            sb.append(z3);
            sb.append(", rotation=");
            sb.append(i4);
            sb.append(", deviceProvisioned=");
            sb.append(z4);
            sb.append(", userSetupCompleted=");
            sb.append(z5);
            sb.append(", iconHint=");
            sb.append(i5);
            sb.append(", sPayShowing=");
            KeyguardFaceListenModel$$ExternalSyntheticOutline0.m(sb, z6, ", gestureDisabledByPolicy=", z7, ", recentVisible=");
            KeyguardFaceListenModel$$ExternalSyntheticOutline0.m(sb, z8, ", homeVisible=", z9, ", backVisible=");
            KeyguardFaceListenModel$$ExternalSyntheticOutline0.m(sb, z10, ", hardKeyIntentPolicy=", z11, ", imeDownButtonForAllRotation=");
            sb.append(z12);
            sb.append(", transitionMode=");
            sb.append(i6);
            sb.append(", regionSamplingEnabled=");
            KeyguardFaceListenModel$$ExternalSyntheticOutline0.m(sb, z13, ", displayChanged=", z14, ", layoutChangedBeforeAttached=");
            KeyguardFaceListenModel$$ExternalSyntheticOutline0.m(sb, z15, ", supportCoverScreen=", z16, ", supportLargeCoverScreen=");
            sb.append(z17);
            sb.append(", lastTaskUserId=");
            sb.append(i7);
            sb.append(", multiModalForLargeCover=");
            sb.append(bool);
            sb.append(")");
            return sb.toString();
        }

        public /* synthetic */ States(Point point, boolean z, boolean z2, LayoutProvider layoutProvider, int i, int i2, int i3, boolean z3, int i4, boolean z4, boolean z5, int i5, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, boolean z11, boolean z12, int i6, boolean z13, boolean z14, boolean z15, boolean z16, boolean z17, int i7, Boolean bool, int i8, DefaultConstructorMarker defaultConstructorMarker) {
            this(point, (i8 & 2) != 0 ? true : z, (i8 & 4) != 0 ? true : z2, (i8 & 8) != 0 ? null : layoutProvider, (i8 & 16) != 0 ? 0 : i, (i8 & 32) != 0 ? 0 : i2, (i8 & 64) != 0 ? 0 : i3, (i8 & 128) != 0 ? false : z3, (i8 & 256) != 0 ? 0 : i4, (i8 & 512) != 0 ? false : z4, (i8 & 1024) != 0 ? true : z5, (i8 & 2048) != 0 ? 0 : i5, (i8 & 4096) != 0 ? false : z6, (i8 & 8192) != 0 ? false : z7, (i8 & 16384) != 0 ? true : z8, (i8 & 32768) != 0 ? true : z9, (i8 & 65536) != 0 ? true : z10, (i8 & 131072) != 0 ? false : z11, (i8 & 262144) != 0 ? false : z12, (i8 & 524288) != 0 ? 0 : i6, (i8 & QuickStepContract.SYSUI_STATE_IME_SWITCHER_SHOWING) != 0 ? false : z13, (i8 & QuickStepContract.SYSUI_STATE_DEVICE_DOZING) != 0 ? false : z14, (i8 & QuickStepContract.SYSUI_STATE_BACK_DISABLED) != 0 ? false : z15, (i8 & QuickStepContract.SYSUI_STATE_BUBBLES_MANAGE_MENU_EXPANDED) != 0 ? false : z16, (i8 & 16777216) != 0 ? false : z17, (i8 & QuickStepContract.SYSUI_STATE_GAME_TOOLS_SHOWING) == 0 ? i7 : 0, (i8 & QuickStepContract.SYSUI_STATE_REQUESTED_RECENT_KEY) != 0 ? null : bool);
        }
    }
}
