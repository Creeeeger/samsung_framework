package com.android.systemui.controls.controller;

import android.content.ComponentName;
import android.os.IBinder;
import android.service.controls.Control;
import android.service.controls.IControlsSubscriber;
import android.service.controls.IControlsSubscription;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.Log;
import com.android.keyguard.KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;
import com.android.systemui.BasicRune;
import com.android.systemui.basic.util.LogWrapper;
import com.android.systemui.controls.controller.ControlInfo;
import com.android.systemui.controls.management.adapter.MainControlAdapter;
import com.android.systemui.controls.management.model.MainControlModel;
import com.android.systemui.controls.ui.CustomControlsUiControllerImpl;
import com.android.systemui.controls.ui.util.ControlExtension;
import com.android.systemui.util.concurrency.DelayableExecutor;
import com.android.systemui.util.concurrency.ExecutorImpl;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class StatefulControlSubscriber extends IControlsSubscriber.Stub {
    public final DelayableExecutor bgExecutor;
    public ControlsController controller;
    public final ControlsProviderLifecycleManager provider;
    public final long requestLimit;
    public IControlsSubscription subscription;
    public boolean subscriptionOpen;

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

    public StatefulControlSubscriber(ControlsController controlsController, ControlsProviderLifecycleManager controlsProviderLifecycleManager, DelayableExecutor delayableExecutor, long j) {
        this.controller = controlsController;
        this.provider = controlsProviderLifecycleManager;
        this.bgExecutor = delayableExecutor;
        this.requestLimit = j;
    }

    public final void onComplete(IBinder iBinder) {
        if (BasicRune.CONTROLS_SAMSUNG_STYLE) {
            Log.d("StatefulControlSubscriber", "onComplete");
        }
        run(iBinder, new Function0() { // from class: com.android.systemui.controls.controller.StatefulControlSubscriber$onComplete$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                StatefulControlSubscriber statefulControlSubscriber = StatefulControlSubscriber.this;
                boolean z = statefulControlSubscriber.subscriptionOpen;
                if (z) {
                    statefulControlSubscriber.subscriptionOpen = false;
                    Log.i("StatefulControlSubscriber", "onComplete receive from '" + statefulControlSubscriber.provider.componentName + "'");
                } else if (BasicRune.CONTROLS_SAMSUNG_STYLE) {
                    KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("onComplete subscriptionOpen=", z, "StatefulControlSubscriber");
                }
                return Unit.INSTANCE;
            }
        });
    }

    public final void onError(IBinder iBinder, final String str) {
        if (BasicRune.CONTROLS_SAMSUNG_STYLE) {
            Log.d("StatefulControlSubscriber", "onError");
        }
        run(iBinder, new Function0() { // from class: com.android.systemui.controls.controller.StatefulControlSubscriber$onError$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                StatefulControlSubscriber statefulControlSubscriber = StatefulControlSubscriber.this;
                boolean z = statefulControlSubscriber.subscriptionOpen;
                if (z) {
                    statefulControlSubscriber.subscriptionOpen = false;
                    Log.e("StatefulControlSubscriber", "onError receive from '" + statefulControlSubscriber.provider.componentName + "': " + str);
                } else if (BasicRune.CONTROLS_SAMSUNG_STYLE) {
                    KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("onError subscriptionOpen=", z, "StatefulControlSubscriber");
                }
                return Unit.INSTANCE;
            }
        });
    }

    public final void onNext(final IBinder iBinder, final Control control) {
        run(iBinder, new Function0() { // from class: com.android.systemui.controls.controller.StatefulControlSubscriber$onNext$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                StatefulControlSubscriber statefulControlSubscriber = StatefulControlSubscriber.this;
                if (!statefulControlSubscriber.subscriptionOpen) {
                    Log.w("StatefulControlSubscriber", "Refresh outside of window for token:" + iBinder);
                } else {
                    ControlsController controlsController = statefulControlSubscriber.controller;
                    if (controlsController != null) {
                        final ComponentName componentName = statefulControlSubscriber.provider.componentName;
                        final Control control2 = control;
                        final ControlsControllerImpl controlsControllerImpl = (ControlsControllerImpl) controlsController;
                        if (!controlsControllerImpl.confirmAvailability()) {
                            Log.d("ControlsControllerImpl", "Controls not available");
                        } else {
                            int status = control2.getStatus();
                            DelayableExecutor delayableExecutor = controlsControllerImpl.executor;
                            if (status == 1) {
                                ((ExecutorImpl) delayableExecutor).execute(new Runnable() { // from class: com.android.systemui.controls.controller.ControlsControllerImpl$refreshStatus$1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        Favorites favorites = Favorites.INSTANCE;
                                        ComponentName componentName2 = componentName;
                                        List singletonList = Collections.singletonList(control2);
                                        favorites.getClass();
                                        if (Favorites.updateControls(componentName2, singletonList)) {
                                            controlsControllerImpl.persistenceWrapper.storeFavorites(Favorites.getAllStructures());
                                        }
                                    }
                                });
                            }
                            if (BasicRune.CONTROLS_AUTO_REMOVE && controlsControllerImpl.isAutoRemove && control2.getStatus() == 2) {
                                if (controlsControllerImpl.confirmAvailability()) {
                                    final CustomControlsUiControllerImpl customControlsUiControllerImpl = (CustomControlsUiControllerImpl) controlsControllerImpl.customUiController;
                                    customControlsUiControllerImpl.getClass();
                                    ((ExecutorImpl) customControlsUiControllerImpl.uiExecutor).execute(new Runnable() { // from class: com.android.systemui.controls.ui.CustomControlsUiControllerImpl$removeControl$1
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            Object obj;
                                            ControlInfo controlInfo;
                                            LogWrapper logWrapper = CustomControlsUiControllerImpl.this.logWrapper;
                                            ComponentName componentName2 = componentName;
                                            ControlExtension.Companion companion = ControlExtension.Companion;
                                            Control control3 = control2;
                                            companion.getClass();
                                            logWrapper.dp("CustomControlsUiControllerImpl", "onRefreshState app=" + componentName2 + ", removeControl:  " + ((Object) ControlExtension.Companion.dump(control3)));
                                            List list = CustomControlsUiControllerImpl.this.models;
                                            ArrayList arrayList = new ArrayList();
                                            Iterator it = ((ArrayList) list).iterator();
                                            while (it.hasNext()) {
                                                Object next = it.next();
                                                if (next instanceof MainControlModel) {
                                                    arrayList.add(next);
                                                }
                                            }
                                            Control control4 = control2;
                                            Iterator it2 = arrayList.iterator();
                                            while (true) {
                                                obj = null;
                                                if (!it2.hasNext()) {
                                                    break;
                                                }
                                                Object next2 = it2.next();
                                                ControlWithState controlWithState = ((MainControlModel) next2).controlWithState;
                                                if (controlWithState != null && (controlInfo = controlWithState.ci) != null) {
                                                    obj = controlInfo.controlId;
                                                }
                                                if (Intrinsics.areEqual(obj, control4.getControlId())) {
                                                    obj = next2;
                                                    break;
                                                }
                                            }
                                            MainControlModel mainControlModel = (MainControlModel) obj;
                                            if (mainControlModel != null) {
                                                CustomControlsUiControllerImpl customControlsUiControllerImpl2 = CustomControlsUiControllerImpl.this;
                                                int indexOf = ((ArrayList) customControlsUiControllerImpl2.models).indexOf(mainControlModel);
                                                ((ArrayList) customControlsUiControllerImpl2.models).remove(indexOf);
                                                MainControlAdapter mainControlAdapter = customControlsUiControllerImpl2.controlAdapter;
                                                if (mainControlAdapter != null) {
                                                    mainControlAdapter.notifyItemRemoved(indexOf);
                                                }
                                                customControlsUiControllerImpl2.logWrapper.dp("CustomControlsUiControllerImpl", MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("notifyItemRemoved: ", indexOf));
                                                CustomControlsUiControllerImpl.access$listAdjustmentIfNeeded(customControlsUiControllerImpl2, Collections.singletonList(mainControlModel.structure));
                                                CustomControlsUiControllerImpl.access$showEmptyStructureIfNeeded(customControlsUiControllerImpl2);
                                                customControlsUiControllerImpl2.isChanged = true;
                                                customControlsUiControllerImpl2.verificationStructureInfos = customControlsUiControllerImpl2.getStructureInfosByUI(customControlsUiControllerImpl2.selectedItem.getComponentName());
                                            }
                                        }
                                    });
                                    ((ExecutorImpl) delayableExecutor).execute(new Runnable() { // from class: com.android.systemui.controls.controller.ControlsControllerImpl$removeFavorite$1
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            boolean z;
                                            Object obj;
                                            boolean z2;
                                            Favorites favorites = Favorites.INSTANCE;
                                            ComponentName componentName2 = componentName;
                                            Control control3 = control2;
                                            favorites.getClass();
                                            Iterator it = Favorites.getStructuresForComponent(componentName2).iterator();
                                            while (true) {
                                                z = true;
                                                if (it.hasNext()) {
                                                    obj = it.next();
                                                    List list = ((StructureInfo) obj).controls;
                                                    if (!(list instanceof Collection) || !list.isEmpty()) {
                                                        Iterator it2 = list.iterator();
                                                        while (it2.hasNext()) {
                                                            if (Intrinsics.areEqual(((ControlInfo) it2.next()).controlId, control3.getControlId())) {
                                                                z2 = true;
                                                                break;
                                                            }
                                                        }
                                                    }
                                                    z2 = false;
                                                    if (z2) {
                                                        break;
                                                    }
                                                } else {
                                                    obj = null;
                                                    break;
                                                }
                                            }
                                            StructureInfo structureInfo = (StructureInfo) obj;
                                            if (structureInfo == null) {
                                                z = false;
                                            } else {
                                                ArrayList arrayList = new ArrayList();
                                                for (Object obj2 : structureInfo.controls) {
                                                    if (!Intrinsics.areEqual(((ControlInfo) obj2).controlId, control3.getControlId())) {
                                                        arrayList.add(obj2);
                                                    }
                                                }
                                                Favorites.replaceControls(StructureInfo.copy$default(structureInfo, arrayList));
                                            }
                                            if (z) {
                                                ControlsFavoritePersistenceWrapper controlsFavoritePersistenceWrapper = controlsControllerImpl.persistenceWrapper;
                                                Favorites.INSTANCE.getClass();
                                                controlsFavoritePersistenceWrapper.storeFavorites(Favorites.getAllStructures());
                                            }
                                        }
                                    });
                                }
                            } else {
                                final List singletonList = Collections.singletonList(control2);
                                final CustomControlsUiControllerImpl customControlsUiControllerImpl2 = (CustomControlsUiControllerImpl) controlsControllerImpl.uiController;
                                customControlsUiControllerImpl2.getClass();
                                ((ExecutorImpl) customControlsUiControllerImpl2.uiExecutor).execute(new Runnable() { // from class: com.android.systemui.controls.ui.CustomControlsUiControllerImpl$onRefreshState$1
                                    /* JADX WARN: Multi-variable type inference failed */
                                    /* JADX WARN: Removed duplicated region for block: B:138:0x0277  */
                                    /* JADX WARN: Type inference failed for: r2v14, types: [java.lang.CharSequence] */
                                    @Override // java.lang.Runnable
                                    /*
                                        Code decompiled incorrectly, please refer to instructions dump.
                                        To view partially-correct code enable 'Show inconsistent code' option in preferences
                                    */
                                    public final void run() {
                                        /*
                                            Method dump skipped, instructions count: 926
                                            To view this dump change 'Code comments level' option to 'DEBUG'
                                        */
                                        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.controls.ui.CustomControlsUiControllerImpl$onRefreshState$1.run():void");
                                    }
                                });
                            }
                        }
                    }
                }
                return Unit.INSTANCE;
            }
        });
    }

    public final void onSubscribe(IBinder iBinder, final IControlsSubscription iControlsSubscription) {
        if (BasicRune.CONTROLS_SAMSUNG_STYLE) {
            Log.d("StatefulControlSubscriber", "onSubscribe");
        }
        run(iBinder, new Function0() { // from class: com.android.systemui.controls.controller.StatefulControlSubscriber$onSubscribe$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                StatefulControlSubscriber statefulControlSubscriber = StatefulControlSubscriber.this;
                statefulControlSubscriber.subscriptionOpen = true;
                IControlsSubscription iControlsSubscription2 = iControlsSubscription;
                statefulControlSubscriber.subscription = iControlsSubscription2;
                statefulControlSubscriber.provider.startSubscription(iControlsSubscription2, statefulControlSubscriber.requestLimit);
                return Unit.INSTANCE;
            }
        });
    }

    public final void run(IBinder iBinder, final Function0 function0) {
        if (Intrinsics.areEqual(this.provider.token, iBinder)) {
            ((ExecutorImpl) this.bgExecutor).execute(new Runnable() { // from class: com.android.systemui.controls.controller.StatefulControlSubscriber$run$1
                @Override // java.lang.Runnable
                public final void run() {
                    Function0.this.invoke();
                }
            });
        } else if (BasicRune.CONTROLS_SAMSUNG_STYLE) {
            Log.w("StatefulControlSubscriber", "Provider token is not same:" + iBinder + ", " + this.provider.token);
        }
    }
}
