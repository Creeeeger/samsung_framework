package com.android.systemui.statusbar.pipeline.wifi.ui.viewmodel;

import com.android.systemui.statusbar.phone.StatusBarSignalPolicy;
import com.android.systemui.statusbar.pipeline.wifi.ui.model.DeXStatusBarWifiIconModel;
import com.android.systemui.statusbar.pipeline.wifi.ui.model.DeXStatusBarWifiIconModelKt;
import com.android.systemui.util.DesktopManager;
import com.android.systemui.util.DesktopManagerImpl;
import java.util.ArrayList;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.flow.ReadonlyStateFlow;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.statusbar.pipeline.wifi.ui.viewmodel.WifiViewModel$DeXWifiIcon$1", f = "WifiViewModel.kt", l = {310}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class WifiViewModel$DeXWifiIcon$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ DesktopManager $desktopManager;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ WifiViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WifiViewModel$DeXWifiIcon$1(DesktopManager desktopManager, WifiViewModel wifiViewModel, Continuation<? super WifiViewModel$DeXWifiIcon$1> continuation) {
        super(2, continuation);
        this.$desktopManager = desktopManager;
        this.this$0 = wifiViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        WifiViewModel$DeXWifiIcon$1 wifiViewModel$DeXWifiIcon$1 = new WifiViewModel$DeXWifiIcon$1(this.$desktopManager, this.this$0, continuation);
        wifiViewModel$DeXWifiIcon$1.L$0 = obj;
        return wifiViewModel$DeXWifiIcon$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((WifiViewModel$DeXWifiIcon$1) create((ProducerScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            ResultKt.throwOnFailure(obj);
            ProducerScope producerScope = (ProducerScope) this.L$0;
            final DesktopManager desktopManager = this.$desktopManager;
            final WifiViewModel wifiViewModel = this.this$0;
            final StatusBarSignalPolicy.DesktopCallback desktopCallback = new StatusBarSignalPolicy.DesktopCallback() { // from class: com.android.systemui.statusbar.pipeline.wifi.ui.viewmodel.WifiViewModel$DeXWifiIcon$1$callback$1
                @Override // com.android.systemui.statusbar.phone.StatusBarSignalPolicy.DesktopCallback
                public final void updateDesktopStatusBarIcons() {
                    WifiViewModel wifiViewModel2 = wifiViewModel;
                    boolean z = ((DeXStatusBarWifiIconModel) wifiViewModel2.updateDeXWifiIconModel.getValue()).isVisible;
                    ReadonlyStateFlow readonlyStateFlow = wifiViewModel2.updateDeXWifiIconModel;
                    ((DesktopManagerImpl) DesktopManager.this).setWifiIcon(z, ((DeXStatusBarWifiIconModel) readonlyStateFlow.getValue()).wifiId, ((DeXStatusBarWifiIconModel) readonlyStateFlow.getValue()).activityId);
                }
            };
            ((DesktopManagerImpl) this.$desktopManager).setDesktopStatusBarIconCallback(desktopCallback);
            final DesktopManager desktopManager2 = this.$desktopManager;
            Function0 function0 = new Function0() { // from class: com.android.systemui.statusbar.pipeline.wifi.ui.viewmodel.WifiViewModel$DeXWifiIcon$1.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    DesktopManager desktopManager3 = DesktopManager.this;
                    DeXStatusBarWifiIconModel deXStatusBarWifiIconModel = DeXStatusBarWifiIconModelKt.DEFAULT_DEX_STATUS_BAR_WIFI_ICON_MODEL;
                    ((DesktopManagerImpl) desktopManager3).setWifiIcon(deXStatusBarWifiIconModel.isVisible, deXStatusBarWifiIconModel.wifiId, deXStatusBarWifiIconModel.activityId);
                    DesktopManager desktopManager4 = DesktopManager.this;
                    StatusBarSignalPolicy.DesktopCallback desktopCallback2 = desktopCallback;
                    List list = ((DesktopManagerImpl) desktopManager4).mDesktopStatusBarIconCallback;
                    if (list != null) {
                        ((ArrayList) list).remove(desktopCallback2);
                    }
                    return Unit.INSTANCE;
                }
            };
            this.label = 1;
            if (ProduceKt.awaitClose(producerScope, function0, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.INSTANCE;
    }
}
