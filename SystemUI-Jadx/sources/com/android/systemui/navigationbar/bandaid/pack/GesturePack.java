package com.android.systemui.navigationbar.bandaid.pack;

import android.provider.Settings;
import com.android.systemui.BasicRune;
import com.android.systemui.navigationbar.NavigationBar;
import com.android.systemui.navigationbar.NavigationBarController;
import com.android.systemui.navigationbar.NavigationBarView;
import com.android.systemui.navigationbar.SamsungNavigationBarView;
import com.android.systemui.navigationbar.TaskbarDelegate;
import com.android.systemui.navigationbar.bandaid.Band;
import com.android.systemui.navigationbar.bandaid.BandAid;
import com.android.systemui.navigationbar.bandaid.BandAidPack;
import com.android.systemui.navigationbar.gestural.GestureHintAnimator;
import com.android.systemui.navigationbar.store.EventTypeFactory;
import com.android.systemui.navigationbar.store.NavBarStateManager;
import com.android.systemui.navigationbar.store.NavBarStore;
import com.android.systemui.navigationbar.store.NavBarStoreAction;
import com.android.systemui.navigationbar.store.NavBarStoreImpl;
import com.android.systemui.recents.OverviewProxyService;
import com.samsung.android.desktopsystemui.sharedlib.keyguard.SemWallpaperColorsWrapper;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Function;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.text.StringsKt__StringsKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class GesturePack implements BandAidPack {
    public final List allBands;

    public GesturePack(final NavBarStore navBarStore) {
        boolean z;
        boolean z2;
        ArrayList arrayList = new ArrayList();
        this.allBands = arrayList;
        int i = Band.$r8$clinit;
        Band.Builder builder = new Band.Builder();
        boolean z3 = BasicRune.NAVBAR_GESTURE;
        builder.runeDependency = z3;
        builder.bandAidDependency = BandAid.GESTURE_PACK_SET_HINT_GROUP;
        builder.targetEvents = Collections.singletonList(EventTypeFactory.EventType.OnNavBarAttachedToWindow.class);
        builder.targetModules = Collections.singletonList(SamsungNavigationBarView.class);
        builder.moduleDependencies = CollectionsKt__CollectionsKt.listOf(NavigationBarView.class, GestureHintAnimator.class);
        builder.patchAction = new Function() { // from class: com.android.systemui.navigationbar.bandaid.pack.GesturePack$1$1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Band.Kit kit = (Band.Kit) obj;
                NavBarStoreImpl navBarStoreImpl = (NavBarStoreImpl) NavBarStore.this;
                navBarStoreImpl.apply(kit, new NavBarStoreAction.SetGestureHintViewGroup(null, 1, null));
                navBarStoreImpl.apply(kit, new NavBarStoreAction.UpdateGestureHintVisibility(null, 1, null));
                return navBarStoreImpl;
            }
        };
        Band.Builder m = ColorPack$$ExternalSyntheticOutline0.m(builder, arrayList);
        m.runeDependency = z3;
        m.bandAidDependency = BandAid.GESTURE_PACK_EDGE_BACK_GESTURE_DISABLE_BY_POLICY;
        m.targetEvents = Collections.singletonList(EventTypeFactory.EventType.OnEdgeBackGestureDisabledByPolicyChanged.class);
        m.targetModules = Collections.singletonList(NavBarStoreImpl.class);
        m.patchAction = new Function() { // from class: com.android.systemui.navigationbar.bandaid.pack.GesturePack$3$1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Band.Kit kit = (Band.Kit) obj;
                NavBarStore navBarStore2 = NavBarStore.this;
                EventTypeFactory.EventType.OnEdgeBackGestureDisabledByPolicyChanged onEdgeBackGestureDisabledByPolicyChanged = (EventTypeFactory.EventType.OnEdgeBackGestureDisabledByPolicyChanged) kit.event;
                if (kit.manager.isSideAndBottomGestureMode(true)) {
                    ((NavBarStoreImpl) navBarStore2).apply(kit, new NavBarStoreAction.UpdateEdgeBackGestureDisabledPolicy(new NavBarStoreAction.Action(null, null, null, null, false, 0.0f, null, false, 0.0f, 0, false, false, 0, onEdgeBackGestureDisabledByPolicyChanged.disabled, null, null, false, false, null, 0.0f, 0.0f, 0, 4186111, null)));
                }
                return Unit.INSTANCE;
            }
        };
        Band.Builder m2 = ColorPack$$ExternalSyntheticOutline0.m(m, arrayList);
        if (z3 && BasicRune.NAVBAR_REMOTEVIEW) {
            z = true;
        } else {
            z = false;
        }
        m2.runeDependency = z;
        m2.bandAidDependency = BandAid.GESTURE_PACK_SHOW_FLOATING_GAMETOOLS_ICON;
        m2.targetEvents = Collections.singletonList(EventTypeFactory.EventType.OnNavBarTransitionModeChanged.class);
        m2.targetModules = CollectionsKt__CollectionsKt.listOf(NavigationBar.class, TaskbarDelegate.class);
        m2.patchAction = new Function() { // from class: com.android.systemui.navigationbar.bandaid.pack.GesturePack$5$1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Band.Kit kit = (Band.Kit) obj;
                EventTypeFactory.EventType.OnNavBarTransitionModeChanged onNavBarTransitionModeChanged = (EventTypeFactory.EventType.OnNavBarTransitionModeChanged) kit.event;
                NavBarStateManager navBarStateManager = kit.manager;
                if (navBarStateManager.isGestureMode() && navBarStateManager.canShowFloatingGameTools(true) && onNavBarTransitionModeChanged.transitionMode == 1) {
                    Settings.Secure.putInt(navBarStateManager.settingsHelper.mResolver, "game_show_floating_icon", 1);
                }
                return Unit.INSTANCE;
            }
        };
        Band.Builder m3 = ColorPack$$ExternalSyntheticOutline0.m(m2, arrayList);
        m3.runeDependency = z3;
        m3.bandAidDependency = BandAid.GESTURE_PACK_SET_HINT_VISIBILITY;
        m3.targetEvents = CollectionsKt__CollectionsKt.listOf(EventTypeFactory.EventType.OnUpdateSpayVisibility.class, EventTypeFactory.EventType.OnSetGestureHintVisibility.class);
        m3.targetModules = CollectionsKt__CollectionsKt.listOf(NavigationBar.class, SamsungNavigationBarView.class);
        m3.moduleDependencies = Collections.singletonList(NavigationBarView.class);
        m3.afterAction = new Consumer() { // from class: com.android.systemui.navigationbar.bandaid.pack.GesturePack$7$1
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((NavBarStoreImpl) NavBarStore.this).apply((Band.Kit) obj, new NavBarStoreAction.UpdateGestureHintVisibility(null, 1, null));
            }
        };
        Band.Builder m4 = ColorPack$$ExternalSyntheticOutline0.m(m3, arrayList);
        m4.runeDependency = z3;
        m4.bandAidDependency = BandAid.GESTURE_PACK_RESET_HINT_VI;
        m4.targetEvents = Collections.singletonList(EventTypeFactory.EventType.ResetBottomGestureHintVI.class);
        m4.targetModules = Collections.singletonList(OverviewProxyService.class);
        m4.moduleDependencies = Collections.singletonList(GestureHintAnimator.class);
        m4.patchAction = new Function() { // from class: com.android.systemui.navigationbar.bandaid.pack.GesturePack$9$1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Band.Kit kit = (Band.Kit) obj;
                NavBarStore navBarStore2 = NavBarStore.this;
                if (kit.manager.isGestureHintEnabled()) {
                    ((NavBarStoreImpl) navBarStore2).apply(kit, new NavBarStoreAction.ResetHintVI(null, 1, null));
                }
                return Unit.INSTANCE;
            }
        };
        Band.Builder m5 = ColorPack$$ExternalSyntheticOutline0.m(m4, arrayList);
        m5.runeDependency = z3;
        m5.bandAidDependency = BandAid.GESTURE_PACK_START_HINT_VI;
        m5.targetEvents = Collections.singletonList(EventTypeFactory.EventType.StartBottomGestureHintVI.class);
        m5.targetModules = Collections.singletonList(OverviewProxyService.class);
        m5.moduleDependencies = Collections.singletonList(GestureHintAnimator.class);
        m5.patchAction = new Function() { // from class: com.android.systemui.navigationbar.bandaid.pack.GesturePack$11$1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Band.Kit kit = (Band.Kit) obj;
                NavBarStore navBarStore2 = NavBarStore.this;
                EventTypeFactory.EventType.StartBottomGestureHintVI startBottomGestureHintVI = (EventTypeFactory.EventType.StartBottomGestureHintVI) kit.event;
                if (kit.manager.isGestureHintEnabled()) {
                    ((NavBarStoreImpl) navBarStore2).apply(kit, new NavBarStoreAction.StartHintVI(new NavBarStoreAction.Action(null, null, null, null, false, 0.0f, null, false, 0.0f, 0, false, false, 0, false, new NavBarStoreAction.GestureHintVIInfo(startBottomGestureHintVI.hintId, 0, 0, 0L, 14, null), null, false, false, null, 0.0f, 0.0f, 0, 4177919, null)));
                }
                return Unit.INSTANCE;
            }
        };
        Band.Builder m6 = ColorPack$$ExternalSyntheticOutline0.m(m5, arrayList);
        m6.runeDependency = z3;
        m6.bandAidDependency = BandAid.GESTURE_PACK_MOVE_HINT_VI;
        m6.targetEvents = Collections.singletonList(EventTypeFactory.EventType.MoveBottomGestureHintDistance.class);
        m6.targetModules = Collections.singletonList(OverviewProxyService.class);
        m6.moduleDependencies = Collections.singletonList(GestureHintAnimator.class);
        m6.patchAction = new Function() { // from class: com.android.systemui.navigationbar.bandaid.pack.GesturePack$13$1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Band.Kit kit = (Band.Kit) obj;
                NavBarStore navBarStore2 = NavBarStore.this;
                EventTypeFactory.EventType.MoveBottomGestureHintDistance moveBottomGestureHintDistance = (EventTypeFactory.EventType.MoveBottomGestureHintDistance) kit.event;
                if (kit.manager.isGestureHintEnabled()) {
                    ((NavBarStoreImpl) navBarStore2).apply(kit, new NavBarStoreAction.MoveHintVI(new NavBarStoreAction.Action(null, null, null, null, false, 0.0f, null, false, 0.0f, 0, false, false, 0, false, new NavBarStoreAction.GestureHintVIInfo(moveBottomGestureHintDistance.hintId, moveBottomGestureHintDistance.distanceX, moveBottomGestureHintDistance.distanceY, moveBottomGestureHintDistance.duration), null, false, false, null, 0.0f, 0.0f, 0, 4177919, null)));
                }
                return Unit.INSTANCE;
            }
        };
        Band.Builder m7 = ColorPack$$ExternalSyntheticOutline0.m(m6, arrayList);
        m7.runeDependency = z3;
        m7.bandAidDependency = BandAid.GESTURE_PACK_KNOX_HARD_KEY_INTENT_POLICY;
        m7.targetEvents = Collections.singletonList(EventTypeFactory.EventType.OnHardKeyIntentPolicyChanged.class);
        m7.targetModules = Collections.singletonList(NavBarStoreImpl.class);
        m7.moduleDependencies = Collections.singletonList(NavigationBarView.class);
        m7.afterAction = new Consumer() { // from class: com.android.systemui.navigationbar.bandaid.pack.GesturePack$15$1
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                Band.Kit kit = (Band.Kit) obj;
                NavBarStore navBarStore2 = NavBarStore.this;
                NavBarStateManager navBarStateManager = kit.manager;
                if (navBarStateManager.isGestureMode()) {
                    NavBarStoreAction.Action action = new NavBarStoreAction.Action(null, null, null, null, false, 0.0f, null, false, 0.0f, 0, false, false, 0, false, null, null, false, false, null, 0.0f, 0.0f, 0, 4194303, null);
                    action.sysUiFlagInfoList.add(new NavBarStoreAction.SysUiFlagInfo(SemWallpaperColorsWrapper.LOCKSCREEN_NIO_TEXT, navBarStateManager.states.hardKeyIntentPolicy));
                    ((NavBarStoreImpl) navBarStore2).apply(kit, new NavBarStoreAction.UpdateSysUiFlags(action));
                }
            }
        };
        Band.Builder m8 = ColorPack$$ExternalSyntheticOutline0.m(m7, arrayList);
        m8.runeDependency = z3;
        m8.bandAidDependency = BandAid.GESTURE_PACK_UPDATE_SYSTEMUI_STATE_FLAG;
        m8.targetEvents = Collections.singletonList(EventTypeFactory.EventType.OnUpdateSysUiStateFlag.class);
        m8.targetModules = CollectionsKt__CollectionsKt.listOf(OverviewProxyService.class, SamsungNavigationBarView.class);
        m8.moduleDependencies = Collections.singletonList(NavigationBarView.class);
        m8.afterAction = new Consumer() { // from class: com.android.systemui.navigationbar.bandaid.pack.GesturePack$17$1
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                Band.Kit kit = (Band.Kit) obj;
                NavBarStore navBarStore2 = NavBarStore.this;
                NavBarStateManager navBarStateManager = kit.manager;
                if (navBarStateManager.isGestureMode()) {
                    NavBarStoreAction.Action action = new NavBarStoreAction.Action(null, null, null, null, false, 0.0f, null, false, 0.0f, 0, false, false, 0, false, null, null, false, false, null, 0.0f, 0.0f, 0, 4194303, null);
                    boolean z4 = true;
                    if (!navBarStateManager.isGameMode(true) || navBarStateManager.isIMEShowing(true)) {
                        z4 = false;
                    }
                    NavBarStoreAction.SysUiFlagInfo sysUiFlagInfo = new NavBarStoreAction.SysUiFlagInfo(SemWallpaperColorsWrapper.LOCKSCREEN_NIO_TEXT, navBarStateManager.states.hardKeyIntentPolicy);
                    List list = action.sysUiFlagInfoList;
                    list.add(sysUiFlagInfo);
                    list.add(new NavBarStoreAction.SysUiFlagInfo(SemWallpaperColorsWrapper.LOCKSCREEN_STATUS_BAR, z4));
                    ((NavBarStoreImpl) navBarStore2).apply(kit, new NavBarStoreAction.UpdateSysUiFlags(action));
                }
            }
        };
        Band.Builder m9 = ColorPack$$ExternalSyntheticOutline0.m(m8, arrayList);
        m9.runeDependency = z3;
        m9.bandAidDependency = BandAid.GESTURE_PACK_UPDATE_ONEHAND_MODE_INFO;
        m9.targetEvents = Collections.singletonList(EventTypeFactory.EventType.OnOneHandModeChanged.class);
        m9.targetModules = Collections.singletonList(NavBarStoreImpl.class);
        m9.patchAction = new Function() { // from class: com.android.systemui.navigationbar.bandaid.pack.GesturePack$19$1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Band.Kit kit = (Band.Kit) obj;
                NavBarStore navBarStore2 = NavBarStore.this;
                String str = ((EventTypeFactory.EventType.OnOneHandModeChanged) kit.event).info;
                if (str != null) {
                    List split$default = StringsKt__StringsKt.split$default(str, new String[]{";"}, 0, 6);
                    if (split$default.size() >= 3) {
                        ((NavBarStoreImpl) navBarStore2).apply(kit, new NavBarStoreAction.UpdateOneHandModeInfo(new NavBarStoreAction.Action(new NavBarStoreAction.OneHandModeInfo(Integer.parseInt((String) split$default.get(0)), Integer.parseInt((String) split$default.get(1)), Float.parseFloat((String) split$default.get(2))), null, null, null, false, 0.0f, null, false, 0.0f, 0, false, false, 0, false, null, null, false, false, null, 0.0f, 0.0f, 0, 4194302, null)));
                    }
                    return Unit.INSTANCE;
                }
                return null;
            }
        };
        Band.Builder m10 = ColorPack$$ExternalSyntheticOutline0.m(m9, arrayList);
        m10.runeDependency = z3;
        m10.bandAidDependency = BandAid.GESTURE_PACK_UPDATE_REGION_SAMPLING_RECT;
        m10.targetEvents = Collections.singletonList(EventTypeFactory.EventType.OnOneHandModeChanged.class);
        m10.targetModules = Collections.singletonList(NavBarStoreImpl.class);
        m10.moduleDependencies = Collections.singletonList(NavigationBarView.class);
        m10.afterAction = new Consumer() { // from class: com.android.systemui.navigationbar.bandaid.pack.GesturePack$21$1
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                Band.Kit kit = (Band.Kit) obj;
                NavBarStore navBarStore2 = NavBarStore.this;
                if (kit.manager.isGestureMode()) {
                    ((NavBarStoreImpl) navBarStore2).apply(kit, new NavBarStoreAction.UpdateRegionSamplingRect(null, 1, null));
                }
            }
        };
        Band.Builder m11 = ColorPack$$ExternalSyntheticOutline0.m(m10, arrayList);
        if (z3 && BasicRune.BASIC_FOLDABLE_TYPE_FOLD) {
            z2 = true;
        } else {
            z2 = false;
        }
        m11.runeDependency = z2;
        m11.bandAidDependency = BandAid.GESTURE_PACK_RECALCULATE_INSET_SCALE;
        m11.targetEvents = Collections.singletonList(EventTypeFactory.EventType.OnFoldStateChanged.class);
        m11.targetModules = Collections.singletonList(NavBarStoreImpl.class);
        m11.patchAction = new Function() { // from class: com.android.systemui.navigationbar.bandaid.pack.GesturePack$23$1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Band.Kit kit = (Band.Kit) obj;
                NavBarStore navBarStore2 = NavBarStore.this;
                EventTypeFactory.EventType.OnFoldStateChanged onFoldStateChanged = (EventTypeFactory.EventType.OnFoldStateChanged) kit.event;
                if (kit.manager.isGestureMode()) {
                    ((NavBarStoreImpl) navBarStore2).apply(kit, new NavBarStoreAction.RecalculateGestureInsetScale(new NavBarStoreAction.Action(null, null, null, null, false, 0.0f, null, false, 0.0f, 0, false, false, 0, false, null, null, onFoldStateChanged.folded, false, null, 0.0f, 0.0f, 0, 4128767, null)));
                }
                return Unit.INSTANCE;
            }
        };
        Band.Builder m12 = ColorPack$$ExternalSyntheticOutline0.m(m11, arrayList);
        m12.runeDependency = BasicRune.NAVBAR_REMOTEVIEW && z3;
        m12.bandAidDependency = BandAid.GESTURE_PACK_UPDATE_GAMETOOLS_VISIBILITY;
        m12.targetEvents = Collections.singletonList(EventTypeFactory.EventType.OnSetRemoteView.class);
        m12.targetModules = Collections.singletonList(NavigationBarController.class);
        m12.patchAction = new Function() { // from class: com.android.systemui.navigationbar.bandaid.pack.GesturePack$25$1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Band.Kit kit = (Band.Kit) obj;
                NavBarStore navBarStore2 = NavBarStore.this;
                NavBarStoreAction.Action action = new NavBarStoreAction.Action(null, null, null, null, false, 0.0f, null, false, 0.0f, 0, false, false, 0, false, null, null, false, false, null, 0.0f, 0.0f, 0, 4194303, null);
                NavBarStateManager navBarStateManager = kit.manager;
                int i2 = NavBarStateManager.$r8$clinit;
                boolean z4 = true;
                if (!navBarStateManager.isGameMode(true) || navBarStateManager.isIMEShowing(true)) {
                    z4 = false;
                }
                action.sysUiFlagInfoList.add(new NavBarStoreAction.SysUiFlagInfo(SemWallpaperColorsWrapper.LOCKSCREEN_STATUS_BAR, z4));
                NavBarStoreImpl navBarStoreImpl = (NavBarStoreImpl) navBarStore2;
                navBarStoreImpl.apply(kit, new NavBarStoreAction.UpdateSysUiFlags(action));
                return navBarStoreImpl;
            }
        };
        Band.Builder m13 = ColorPack$$ExternalSyntheticOutline0.m(m12, arrayList);
        m13.runeDependency = z3;
        m13.bandAidDependency = BandAid.GESTURE_PACK_BOTTOM_SENSITIVITY_CHANGED;
        m13.targetEvents = Collections.singletonList(EventTypeFactory.EventType.OnBottomSensitivityChanged.class);
        m13.targetModules = Collections.singletonList(NavBarStoreImpl.class);
        m13.patchAction = new Function() { // from class: com.android.systemui.navigationbar.bandaid.pack.GesturePack$27$1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Band.Kit kit = (Band.Kit) obj;
                NavBarStore navBarStore2 = NavBarStore.this;
                NavBarStateManager navBarStateManager = kit.manager;
                int i2 = NavBarStateManager.$r8$clinit;
                if ((!navBarStateManager.isGestureHintEnabled()) & navBarStateManager.isBottomGestureMode(false)) {
                    ((NavBarStoreImpl) navBarStore2).apply(kit, new NavBarStoreAction.UpdateNavBarLayoutParams(null, 1, null));
                }
                return Unit.INSTANCE;
            }
        };
        Band.Builder m14 = ColorPack$$ExternalSyntheticOutline0.m(m13, arrayList);
        m14.runeDependency = z3;
        m14.bandAidDependency = BandAid.GESTURE_PACK_UPDATE_ACTIVE_INDICATOR_SPRING_PARAMS;
        m14.targetEvents = Collections.singletonList(EventTypeFactory.EventType.OnUpdateBackGestureActiveIndicatorParams.class);
        m14.targetModules = EmptyList.INSTANCE;
        m14.patchAction = new Function() { // from class: com.android.systemui.navigationbar.bandaid.pack.GesturePack$29$1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Band.Kit kit = (Band.Kit) obj;
                NavBarStore navBarStore2 = NavBarStore.this;
                EventTypeFactory.EventType.OnUpdateBackGestureActiveIndicatorParams onUpdateBackGestureActiveIndicatorParams = (EventTypeFactory.EventType.OnUpdateBackGestureActiveIndicatorParams) kit.event;
                NavBarStoreImpl navBarStoreImpl = (NavBarStoreImpl) navBarStore2;
                navBarStoreImpl.apply(kit, new NavBarStoreAction.UpdateIndicatorSpringParams(new NavBarStoreAction.Action(null, null, null, null, false, 0.0f, null, false, 0.0f, 0, false, false, 0, false, null, null, false, false, null, onUpdateBackGestureActiveIndicatorParams.stiffness, onUpdateBackGestureActiveIndicatorParams.dampingRatio, 0, 2621439, null)));
                return navBarStoreImpl;
            }
        };
        arrayList.add(m14.build());
    }

    @Override // com.android.systemui.navigationbar.bandaid.BandAidPack
    public final List getBands() {
        return this.allBands;
    }
}
