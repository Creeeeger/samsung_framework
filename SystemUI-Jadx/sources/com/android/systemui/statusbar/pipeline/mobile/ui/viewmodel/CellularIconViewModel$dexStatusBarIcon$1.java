package com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel;

import com.android.systemui.statusbar.phone.StatusBarSignalPolicy;
import com.android.systemui.statusbar.pipeline.mobile.ui.model.DeXStatusBarIconModel;
import com.android.systemui.statusbar.pipeline.mobile.ui.model.DeXStatusBarIconModelKt;
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

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.CellularIconViewModel$dexStatusBarIcon$1", f = "MobileIconViewModel.kt", l = {655}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class CellularIconViewModel$dexStatusBarIcon$1 extends SuspendLambda implements Function2 {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ CellularIconViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CellularIconViewModel$dexStatusBarIcon$1(CellularIconViewModel cellularIconViewModel, Continuation<? super CellularIconViewModel$dexStatusBarIcon$1> continuation) {
        super(2, continuation);
        this.this$0 = cellularIconViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        CellularIconViewModel$dexStatusBarIcon$1 cellularIconViewModel$dexStatusBarIcon$1 = new CellularIconViewModel$dexStatusBarIcon$1(this.this$0, continuation);
        cellularIconViewModel$dexStatusBarIcon$1.L$0 = obj;
        return cellularIconViewModel$dexStatusBarIcon$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((CellularIconViewModel$dexStatusBarIcon$1) create((ProducerScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
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
            final CellularIconViewModel cellularIconViewModel = this.this$0;
            final StatusBarSignalPolicy.DesktopCallback desktopCallback = new StatusBarSignalPolicy.DesktopCallback() { // from class: com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.CellularIconViewModel$dexStatusBarIcon$1$callback$1
                @Override // com.android.systemui.statusbar.phone.StatusBarSignalPolicy.DesktopCallback
                public final void updateDesktopStatusBarIcons() {
                    CellularIconViewModel cellularIconViewModel2 = CellularIconViewModel.this;
                    CellularIconViewModel.access$sendDeXStatusBarIconModel(cellularIconViewModel2, (DeXStatusBarIconModel) cellularIconViewModel2.updateDeXStatusBarIconModel.getValue());
                }
            };
            ((DesktopManagerImpl) this.this$0.desktopManager).setDesktopStatusBarIconCallback(desktopCallback);
            final CellularIconViewModel cellularIconViewModel2 = this.this$0;
            Function0 function0 = new Function0() { // from class: com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.CellularIconViewModel$dexStatusBarIcon$1.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    CellularIconViewModel.access$sendDeXStatusBarIconModel(CellularIconViewModel.this, DeXStatusBarIconModelKt.DEFAULT_DEX_STATUS_BAR_ICON_MODEL);
                    DesktopManager desktopManager = CellularIconViewModel.this.desktopManager;
                    StatusBarSignalPolicy.DesktopCallback desktopCallback2 = desktopCallback;
                    List list = ((DesktopManagerImpl) desktopManager).mDesktopStatusBarIconCallback;
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
