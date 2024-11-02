package com.android.systemui.navigationbar.bandaid.pack;

import android.os.Bundle;
import com.android.systemui.BasicRune;
import com.android.systemui.Dependency;
import com.android.systemui.navigationbar.NavBarHelper;
import com.android.systemui.navigationbar.NavigationBar;
import com.android.systemui.navigationbar.NavigationBarController;
import com.android.systemui.navigationbar.NavigationBarTransitions;
import com.android.systemui.navigationbar.NavigationModeController;
import com.android.systemui.navigationbar.TaskbarDelegate;
import com.android.systemui.navigationbar.bandaid.Band;
import com.android.systemui.navigationbar.bandaid.BandAid;
import com.android.systemui.navigationbar.bandaid.BandAidPack;
import com.android.systemui.navigationbar.gestural.EdgeBackGestureHandler;
import com.android.systemui.navigationbar.remoteview.NavBarRemoteViewManager;
import com.android.systemui.navigationbar.store.EventTypeFactory;
import com.android.systemui.navigationbar.store.NavBarStore;
import com.android.systemui.navigationbar.store.NavBarStoreAction;
import com.android.systemui.navigationbar.store.NavBarStoreImpl;
import com.android.systemui.shared.navigationbar.NavBarEvents;
import com.android.systemui.statusbar.phone.LightBarController;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.function.Function;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class TaskBarPack implements BandAidPack {
    public final List allBands;
    public final NavBarStore store;

    public TaskBarPack(NavBarStore navBarStore) {
        this.store = navBarStore;
        ArrayList arrayList = new ArrayList();
        this.allBands = arrayList;
        int i = Band.$r8$clinit;
        Band.Builder builder = new Band.Builder();
        boolean z = BasicRune.NAVBAR_SUPPORT_TASKBAR;
        builder.runeDependency = z;
        builder.bandAidDependency = BandAid.TASKBAR_PACK_PACKAGE_REMOVED;
        builder.targetEvents = Collections.singletonList(EventTypeFactory.EventType.OnPackageRemoved.class);
        builder.targetModules = Collections.singletonList(NavBarStoreImpl.class);
        builder.moduleDependencies = CollectionsKt__CollectionsKt.listOf(TaskbarDelegate.class, NavBarRemoteViewManager.class);
        builder.priority = 0;
        builder.patchAction = new Function() { // from class: com.android.systemui.navigationbar.bandaid.pack.TaskBarPack$1$1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                boolean z2;
                Band.Kit kit = (Band.Kit) obj;
                TaskBarPack taskBarPack = TaskBarPack.this;
                EventTypeFactory.EventType.OnPackageRemoved onPackageRemoved = (EventTypeFactory.EventType.OnPackageRemoved) kit.event;
                NavBarRemoteViewManager navBarRemoteViewManager = (NavBarRemoteViewManager) ((NavBarStoreImpl) taskBarPack.store).getModule(NavBarRemoteViewManager.class, kit.displayId);
                if (navBarRemoteViewManager.leftViewList.isEmpty() && navBarRemoteViewManager.rightViewList.isEmpty()) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (!z2) {
                    String str = onPackageRemoved.packageName;
                    boolean isExist = navBarRemoteViewManager.isExist(0, str);
                    NavBarStore navBarStore2 = taskBarPack.store;
                    if (isExist) {
                        ((NavBarStoreImpl) navBarStore2).apply(kit, new NavBarStoreAction.UpdateTaskBarNavBarEvents(new NavBarStoreAction.Action(null, null, null, null, false, 0.0f, null, false, 0.0f, 0, false, false, 0, false, null, null, false, false, TaskBarPack.access$makeRemoteViewEventToRemove(taskBarPack, str, 0), 0.0f, 0.0f, 0, 3932159, null)));
                    }
                    if (navBarRemoteViewManager.isExist(1, str)) {
                        ((NavBarStoreImpl) navBarStore2).apply(kit, new NavBarStoreAction.UpdateTaskBarNavBarEvents(new NavBarStoreAction.Action(null, null, null, null, false, 0.0f, null, false, 0.0f, 0, false, false, 0, false, null, null, false, false, TaskBarPack.access$makeRemoteViewEventToRemove(taskBarPack, str, 1), 0.0f, 0.0f, 0, 3932159, null)));
                    }
                }
                return Unit.INSTANCE;
            }
        };
        Band.Builder m = ColorPack$$ExternalSyntheticOutline0.m(builder, arrayList);
        m.runeDependency = z;
        m.bandAidDependency = BandAid.TASKBAR_PACK_OPEN_THEME_CHANGED;
        m.targetEvents = CollectionsKt__CollectionsKt.listOf(EventTypeFactory.EventType.OnUseThemeDefaultChanged.class, EventTypeFactory.EventType.OnConfigChanged.class, EventTypeFactory.EventType.OnOpenThemeChanged.class);
        m.targetModules = CollectionsKt__CollectionsKt.listOf(NavBarStoreImpl.class, NavigationBar.class);
        m.moduleDependencies = Collections.singletonList(TaskbarDelegate.class);
        m.patchAction = new Function() { // from class: com.android.systemui.navigationbar.bandaid.pack.TaskBarPack$3$1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Band.Kit kit = (Band.Kit) obj;
                TaskBarPack taskBarPack = TaskBarPack.this;
                if (kit.event instanceof EventTypeFactory.EventType.OnOpenThemeChanged) {
                    kit.manager.updateUseThemeDefault();
                }
                NavBarStoreImpl navBarStoreImpl = (NavBarStoreImpl) taskBarPack.store;
                navBarStoreImpl.apply(kit, new NavBarStoreAction.UpdateTaskBarIconsAndHints(null, 1, null));
                return navBarStoreImpl;
            }
        };
        Band.Builder m2 = ColorPack$$ExternalSyntheticOutline0.m(m, arrayList);
        m2.runeDependency = z;
        m2.bandAidDependency = BandAid.TASKBAR_PACK_ROTATION_LOCKED_CHANGED;
        m2.targetEvents = Collections.singletonList(EventTypeFactory.EventType.OnRotationLockedChanged.class);
        m2.targetModules = Collections.singletonList(NavBarStoreImpl.class);
        m2.moduleDependencies = Collections.singletonList(TaskbarDelegate.class);
        m2.patchAction = new Function() { // from class: com.android.systemui.navigationbar.bandaid.pack.TaskBarPack$5$1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Band.Kit kit = (Band.Kit) obj;
                TaskBarPack taskBarPack = TaskBarPack.this;
                EventTypeFactory.EventType.OnRotationLockedChanged onRotationLockedChanged = (EventTypeFactory.EventType.OnRotationLockedChanged) kit.event;
                NavBarEvents navBarEvents = new NavBarEvents(null, null, null, null, false, 0, false, false, 0, null, false, null, 4095, null);
                navBarEvents.eventType = NavBarEvents.EventType.ON_ROTATION_LOCKED_CHANGED;
                navBarEvents.rotationLocked = onRotationLockedChanged.rotationLocked;
                NavBarStoreImpl navBarStoreImpl = (NavBarStoreImpl) taskBarPack.store;
                navBarStoreImpl.apply(kit, new NavBarStoreAction.UpdateTaskBarNavBarEvents(new NavBarStoreAction.Action(null, null, null, null, false, 0.0f, null, false, 0.0f, 0, false, false, 0, false, null, null, false, false, navBarEvents, 0.0f, 0.0f, 0, 3932159, null)));
                return navBarStoreImpl;
            }
        };
        Band.Builder m3 = ColorPack$$ExternalSyntheticOutline0.m(m2, arrayList);
        m3.runeDependency = z;
        m3.bandAidDependency = BandAid.TASKBAR_PACK_SET_REMOTEVIEW;
        m3.targetEvents = Collections.singletonList(EventTypeFactory.EventType.OnSetRemoteView.class);
        m3.targetModules = Collections.singletonList(NavigationBarController.class);
        m3.moduleDependencies = Collections.singletonList(TaskbarDelegate.class);
        m3.patchAction = new Function() { // from class: com.android.systemui.navigationbar.bandaid.pack.TaskBarPack$7$1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Band.Kit kit = (Band.Kit) obj;
                TaskBarPack taskBarPack = TaskBarPack.this;
                EventTypeFactory.EventType.OnSetRemoteView onSetRemoteView = (EventTypeFactory.EventType.OnSetRemoteView) kit.event;
                NavBarEvents navBarEvents = new NavBarEvents(null, null, null, null, false, 0, false, false, 0, null, false, null, 4095, null);
                Bundle bundle = new Bundle();
                bundle.putString("requestClass", onSetRemoteView.requestClass);
                bundle.putParcelable("remoteViews", onSetRemoteView.remoteViews);
                bundle.putInt("position", onSetRemoteView.position);
                bundle.putInt("priority", onSetRemoteView.priority);
                navBarEvents.eventType = NavBarEvents.EventType.ON_UPDATE_NAVBAR_REMOTEVIEWS;
                navBarEvents.remoteViewBundle = bundle;
                NavBarStoreImpl navBarStoreImpl = (NavBarStoreImpl) taskBarPack.store;
                navBarStoreImpl.apply(kit, new NavBarStoreAction.UpdateTaskBarNavBarEvents(new NavBarStoreAction.Action(null, null, null, null, false, 0.0f, null, false, 0.0f, 0, false, false, 0, false, null, null, false, false, navBarEvents, 0.0f, 0.0f, 0, 3932159, null)));
                return navBarStoreImpl;
            }
        };
        Band.Builder m4 = ColorPack$$ExternalSyntheticOutline0.m(m3, arrayList);
        m4.runeDependency = z;
        m4.bandAidDependency = BandAid.TASKBAR_PACK_UPDATE_VISIBILITY_BY_KNOX;
        m4.targetEvents = Collections.singletonList(EventTypeFactory.EventType.OnNavBarKnoxPolicyChanged.class);
        m4.targetModules = Collections.singletonList(NavBarStoreImpl.class);
        m4.moduleDependencies = Collections.singletonList(TaskbarDelegate.class);
        m4.patchAction = new Function() { // from class: com.android.systemui.navigationbar.bandaid.pack.TaskBarPack$9$1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                int i2;
                Band.Kit kit = (Band.Kit) obj;
                TaskBarPack taskBarPack = TaskBarPack.this;
                NavBarEvents navBarEvents = new NavBarEvents(null, null, null, null, false, 0, false, false, 0, null, false, null, 4095, null);
                boolean isNavBarHiddenByKnox = kit.manager.isNavBarHiddenByKnox();
                navBarEvents.eventType = NavBarEvents.EventType.ON_UPDATE_TASKBAR_VIS_BY_KNOX;
                navBarEvents.hiddenByKnox = isNavBarHiddenByKnox;
                NavBarStoreImpl navBarStoreImpl = (NavBarStoreImpl) taskBarPack.store;
                navBarStoreImpl.apply(kit, new NavBarStoreAction.UpdateTaskBarNavBarEvents(new NavBarStoreAction.Action(null, null, null, null, false, 0.0f, null, false, 0.0f, 0, false, false, 0, false, null, null, false, false, navBarEvents, 0.0f, 0.0f, 0, 3932159, null)));
                if (isNavBarHiddenByKnox) {
                    i2 = 8;
                } else {
                    i2 = 0;
                }
                navBarStoreImpl.apply(kit, new NavBarStoreAction.UpdateNavBarGoneStateFlag(new NavBarStoreAction.Action(null, null, null, null, false, 0.0f, null, false, 0.0f, 0, false, false, i2, false, null, null, false, false, null, 0.0f, 0.0f, 0, 4190207, null)));
                return navBarStoreImpl;
            }
        };
        Band.Builder m5 = ColorPack$$ExternalSyntheticOutline0.m(m4, arrayList);
        m5.runeDependency = z;
        m5.bandAidDependency = BandAid.TASKBAR_PACK_ATTACHED_TO_WINDOW;
        m5.targetEvents = Collections.singletonList(EventTypeFactory.EventType.OnTaskbarAttachedToWindow.class);
        m5.targetModules = Collections.singletonList(TaskbarDelegate.class);
        m5.moduleDependencies = Collections.singletonList(TaskbarDelegate.class);
        m5.patchAction = new Function() { // from class: com.android.systemui.navigationbar.bandaid.pack.TaskBarPack$11$1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Band.Kit kit = (Band.Kit) obj;
                NavBarStoreImpl navBarStoreImpl = (NavBarStoreImpl) TaskBarPack.this.store;
                navBarStoreImpl.apply(kit, new NavBarStoreAction.UpdateTaskbarStatus(new NavBarStoreAction.Action(null, null, null, null, false, 0.0f, null, false, 0.0f, 0, false, false, 0, false, null, null, false, true, null, 0.0f, 0.0f, 0, 4063231, null)));
                navBarStoreImpl.apply(kit, new NavBarStoreAction.UpdateTaskBarIconsAndHints(null, 1, null));
                return navBarStoreImpl;
            }
        };
        Band.Builder m6 = ColorPack$$ExternalSyntheticOutline0.m(m5, arrayList);
        m6.runeDependency = z;
        m6.bandAidDependency = BandAid.TASKBAR_PACK_DETACHED_FROM_WINDOW;
        m6.targetEvents = Collections.singletonList(EventTypeFactory.EventType.OnTaskbarDetachedFromWindow.class);
        m6.targetModules = Collections.singletonList(TaskbarDelegate.class);
        m6.moduleDependencies = Collections.singletonList(TaskbarDelegate.class);
        m6.patchAction = new Function() { // from class: com.android.systemui.navigationbar.bandaid.pack.TaskBarPack$13$1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                NavBarStoreImpl navBarStoreImpl = (NavBarStoreImpl) TaskBarPack.this.store;
                navBarStoreImpl.apply((Band.Kit) obj, new NavBarStoreAction.UpdateTaskbarStatus(new NavBarStoreAction.Action(null, null, null, null, false, 0.0f, null, false, 0.0f, 0, false, false, 0, false, null, null, false, false, null, 0.0f, 0.0f, 0, 4063231, null)));
                return navBarStoreImpl;
            }
        };
        Band.Builder m7 = ColorPack$$ExternalSyntheticOutline0.m(m6, arrayList);
        m7.runeDependency = z;
        m7.bandAidDependency = BandAid.TASKBAR_PACK_CONFIG_CHANGED;
        m7.targetEvents = Collections.singletonList(EventTypeFactory.EventType.OnConfigChanged.class);
        m7.targetModules = Collections.singletonList(TaskbarDelegate.class);
        m7.moduleDependencies = CollectionsKt__CollectionsKt.listOf(TaskbarDelegate.class, LightBarController.class, NavigationBarTransitions.class);
        m7.patchAction = new Function() { // from class: com.android.systemui.navigationbar.bandaid.pack.TaskBarPack$15$1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                boolean z2;
                Band.Kit kit = (Band.Kit) obj;
                TaskBarPack taskBarPack = TaskBarPack.this;
                if ((((EventTypeFactory.EventType.OnConfigChanged) kit.event).newConfig.uiMode & 32) != 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (kit.states.darkMode != z2) {
                    NavBarStoreImpl navBarStoreImpl = (NavBarStoreImpl) taskBarPack.store;
                    navBarStoreImpl.apply(kit, new NavBarStoreAction.ReevaluateNavBar(null, 1, null));
                    navBarStoreImpl.apply(kit, new NavBarStoreAction.UpdateNavBarOpaqueColor(null, 1, null));
                }
                return Unit.INSTANCE;
            }
        };
        Band.Builder m8 = ColorPack$$ExternalSyntheticOutline0.m(m7, arrayList);
        m8.runeDependency = z;
        m8.bandAidDependency = BandAid.TASKBAR_PACK_UPDATE_SIDE_BACK_INSETS;
        m8.targetEvents = Collections.singletonList(EventTypeFactory.EventType.OnUpdateSideBackGestureInsets.class);
        m8.targetModules = CollectionsKt__CollectionsKt.listOf(EdgeBackGestureHandler.class, TaskbarDelegate.class);
        m8.moduleDependencies = Collections.singletonList(TaskbarDelegate.class);
        m8.patchAction = new Function() { // from class: com.android.systemui.navigationbar.bandaid.pack.TaskBarPack$17$1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Band.Kit kit = (Band.Kit) obj;
                TaskBarPack taskBarPack = TaskBarPack.this;
                EventTypeFactory.EventType.OnUpdateSideBackGestureInsets onUpdateSideBackGestureInsets = (EventTypeFactory.EventType.OnUpdateSideBackGestureInsets) kit.event;
                NavBarEvents navBarEvents = new NavBarEvents(null, null, null, null, false, 0, false, false, 0, null, false, null, 4095, null);
                Bundle bundle = new Bundle();
                bundle.putInt("leftWidth", onUpdateSideBackGestureInsets.leftWidth);
                bundle.putInt("rightWidth", onUpdateSideBackGestureInsets.rightWidth);
                navBarEvents.eventType = NavBarEvents.EventType.ON_UPDATE_SIDE_BACK_GESTURE_INSETS;
                navBarEvents.insetsBundle = bundle;
                NavBarStoreImpl navBarStoreImpl = (NavBarStoreImpl) taskBarPack.store;
                navBarStoreImpl.apply(kit, new NavBarStoreAction.UpdateTaskBarNavBarEvents(new NavBarStoreAction.Action(null, null, null, null, false, 0.0f, null, false, 0.0f, 0, false, false, 0, false, null, null, false, false, navBarEvents, 0.0f, 0.0f, 0, 3932159, null)));
                return navBarStoreImpl;
            }
        };
        Band.Builder m9 = ColorPack$$ExternalSyntheticOutline0.m(m8, arrayList);
        m9.runeDependency = z;
        m9.bandAidDependency = BandAid.TASKBAR_PACK_UPDATE_TASKBAR_AVAILABLE;
        m9.targetEvents = Collections.singletonList(EventTypeFactory.EventType.OnUpdateTaskbarAvailable.class);
        m9.targetModules = CollectionsKt__CollectionsKt.listOf(NavBarStoreImpl.class, NavBarHelper.class, NavigationModeController.class);
        m9.patchAction = new Function() { // from class: com.android.systemui.navigationbar.bandaid.pack.TaskBarPack$19$1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                final Band.Kit kit = (Band.Kit) obj;
                ((Executor) Dependency.get(Dependency.MAIN_EXECUTOR)).execute(new Runnable() { // from class: com.android.systemui.navigationbar.bandaid.pack.TaskBarPack$19$1$1$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        ((NavigationBarController) Dependency.get(NavigationBarController.class)).updateNavbarForTaskbar();
                        Band.Kit.this.manager.states.layoutChangedBeforeAttached = false;
                    }
                });
                return Unit.INSTANCE;
            }
        };
        arrayList.add(m9.build());
    }

    public static final NavBarEvents access$makeRemoteViewEventToRemove(TaskBarPack taskBarPack, String str, int i) {
        NavBarEvents navBarEvents = new NavBarEvents(null, null, null, null, false, 0, false, false, 0, null, false, null, 4095, null);
        Bundle bundle = new Bundle();
        bundle.putString("requestClass", str);
        bundle.putParcelable("remoteViews", null);
        bundle.putInt("position", i);
        bundle.putInt("priority", 0);
        navBarEvents.eventType = NavBarEvents.EventType.ON_UPDATE_NAVBAR_REMOTEVIEWS;
        navBarEvents.remoteViewBundle = bundle;
        return navBarEvents;
    }

    @Override // com.android.systemui.navigationbar.bandaid.BandAidPack
    public final List getBands() {
        return this.allBands;
    }
}
