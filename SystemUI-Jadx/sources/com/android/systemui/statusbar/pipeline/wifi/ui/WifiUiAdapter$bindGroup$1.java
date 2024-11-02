package com.android.systemui.statusbar.pipeline.wifi.ui;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.RepeatOnLifecycleKt;
import com.android.systemui.statusbar.phone.StatusBarIconControllerImpl;
import com.android.systemui.statusbar.phone.StatusBarIconHolder;
import com.android.systemui.statusbar.pipeline.wifi.ui.model.WifiIcon;
import com.android.systemui.statusbar.pipeline.wifi.ui.viewmodel.LocationBasedWifiViewModel;
import kotlin.KotlinNothingValueException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.statusbar.pipeline.wifi.ui.WifiUiAdapter$bindGroup$1", f = "WifiUiAdapter.kt", l = {67}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class WifiUiAdapter$bindGroup$1 extends SuspendLambda implements Function3 {
    final /* synthetic */ LocationBasedWifiViewModel $locationViewModel;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ WifiUiAdapter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    @DebugMetadata(c = "com.android.systemui.statusbar.pipeline.wifi.ui.WifiUiAdapter$bindGroup$1$1", f = "WifiUiAdapter.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.android.systemui.statusbar.pipeline.wifi.ui.WifiUiAdapter$bindGroup$1$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass1 extends SuspendLambda implements Function2 {
        final /* synthetic */ LocationBasedWifiViewModel $locationViewModel;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ WifiUiAdapter this$0;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        @DebugMetadata(c = "com.android.systemui.statusbar.pipeline.wifi.ui.WifiUiAdapter$bindGroup$1$1$1", f = "WifiUiAdapter.kt", l = {69}, m = "invokeSuspend")
        /* renamed from: com.android.systemui.statusbar.pipeline.wifi.ui.WifiUiAdapter$bindGroup$1$1$1, reason: invalid class name and collision with other inner class name */
        /* loaded from: classes2.dex */
        public final class C01221 extends SuspendLambda implements Function2 {
            final /* synthetic */ LocationBasedWifiViewModel $locationViewModel;
            int label;
            final /* synthetic */ WifiUiAdapter this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C01221(LocationBasedWifiViewModel locationBasedWifiViewModel, WifiUiAdapter wifiUiAdapter, Continuation<? super C01221> continuation) {
                super(2, continuation);
                this.$locationViewModel = locationBasedWifiViewModel;
                this.this$0 = wifiUiAdapter;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new C01221(this.$locationViewModel, this.this$0, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((C01221) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i = this.label;
                if (i != 0) {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                } else {
                    ResultKt.throwOnFailure(obj);
                    StateFlow wifiIcon = this.$locationViewModel.getWifiIcon();
                    final WifiUiAdapter wifiUiAdapter = this.this$0;
                    FlowCollector flowCollector = new FlowCollector() { // from class: com.android.systemui.statusbar.pipeline.wifi.ui.WifiUiAdapter.bindGroup.1.1.1.1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj2, Continuation continuation) {
                            if (((WifiIcon) obj2) instanceof WifiIcon.Visible) {
                                WifiUiAdapter wifiUiAdapter2 = WifiUiAdapter.this;
                                wifiUiAdapter2.statusBarPipelineFlags.useNewWifiIcon();
                                StatusBarIconControllerImpl statusBarIconControllerImpl = (StatusBarIconControllerImpl) wifiUiAdapter2.iconController;
                                statusBarIconControllerImpl.mStatusBarPipelineFlags.useNewWifiIcon();
                                String string = statusBarIconControllerImpl.mContext.getString(17042951);
                                if (statusBarIconControllerImpl.mStatusBarIconList.getIconHolder(0, string) == null) {
                                    StatusBarIconHolder.Companion.getClass();
                                    StatusBarIconHolder statusBarIconHolder = new StatusBarIconHolder(null);
                                    statusBarIconHolder.type = 4;
                                    statusBarIconControllerImpl.setIcon(string, statusBarIconHolder);
                                }
                            }
                            return Unit.INSTANCE;
                        }
                    };
                    this.label = 1;
                    if (wifiIcon.collect(flowCollector, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                throw new KotlinNothingValueException();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(LocationBasedWifiViewModel locationBasedWifiViewModel, WifiUiAdapter wifiUiAdapter, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$locationViewModel = locationBasedWifiViewModel;
            this.this$0 = wifiUiAdapter;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$locationViewModel, this.this$0, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                BuildersKt.launch$default((CoroutineScope) this.L$0, null, null, new C01221(this.$locationViewModel, this.this$0, null), 3);
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WifiUiAdapter$bindGroup$1(LocationBasedWifiViewModel locationBasedWifiViewModel, WifiUiAdapter wifiUiAdapter, Continuation<? super WifiUiAdapter$bindGroup$1> continuation) {
        super(3, continuation);
        this.$locationViewModel = locationBasedWifiViewModel;
        this.this$0 = wifiUiAdapter;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        WifiUiAdapter$bindGroup$1 wifiUiAdapter$bindGroup$1 = new WifiUiAdapter$bindGroup$1(this.$locationViewModel, this.this$0, (Continuation) obj3);
        wifiUiAdapter$bindGroup$1.L$0 = (LifecycleOwner) obj;
        return wifiUiAdapter$bindGroup$1.invokeSuspend(Unit.INSTANCE);
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
            LifecycleOwner lifecycleOwner = (LifecycleOwner) this.L$0;
            Lifecycle.State state = Lifecycle.State.STARTED;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$locationViewModel, this.this$0, null);
            this.label = 1;
            if (RepeatOnLifecycleKt.repeatOnLifecycle(lifecycleOwner, state, anonymousClass1, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.INSTANCE;
    }
}
