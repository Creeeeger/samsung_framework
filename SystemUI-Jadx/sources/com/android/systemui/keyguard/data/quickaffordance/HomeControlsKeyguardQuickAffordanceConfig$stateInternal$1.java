package com.android.systemui.keyguard.data.quickaffordance;

import com.android.systemui.R;
import com.android.systemui.common.coroutine.ChannelExt;
import com.android.systemui.common.shared.model.ContentDescription;
import com.android.systemui.common.shared.model.Icon;
import com.android.systemui.controls.ControlsServiceInfo;
import com.android.systemui.controls.controller.ControlsController;
import com.android.systemui.controls.controller.ControlsControllerImpl;
import com.android.systemui.controls.dagger.ControlsComponent;
import com.android.systemui.controls.management.ControlsListingController;
import com.android.systemui.controls.management.ControlsListingControllerImpl;
import com.android.systemui.keyguard.data.quickaffordance.KeyguardQuickAffordanceConfig;
import com.android.systemui.settings.UserTrackerImpl;
import java.util.ArrayList;
import java.util.Iterator;
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

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.keyguard.data.quickaffordance.HomeControlsKeyguardQuickAffordanceConfig$stateInternal$1", f = "HomeControlsKeyguardQuickAffordanceConfig.kt", l = {169}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class HomeControlsKeyguardQuickAffordanceConfig$stateInternal$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ ControlsListingController $listingController;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ HomeControlsKeyguardQuickAffordanceConfig this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HomeControlsKeyguardQuickAffordanceConfig$stateInternal$1(ControlsListingController controlsListingController, HomeControlsKeyguardQuickAffordanceConfig homeControlsKeyguardQuickAffordanceConfig, Continuation<? super HomeControlsKeyguardQuickAffordanceConfig$stateInternal$1> continuation) {
        super(2, continuation);
        this.$listingController = controlsListingController;
        this.this$0 = homeControlsKeyguardQuickAffordanceConfig;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        HomeControlsKeyguardQuickAffordanceConfig$stateInternal$1 homeControlsKeyguardQuickAffordanceConfig$stateInternal$1 = new HomeControlsKeyguardQuickAffordanceConfig$stateInternal$1(this.$listingController, this.this$0, continuation);
        homeControlsKeyguardQuickAffordanceConfig$stateInternal$1.L$0 = obj;
        return homeControlsKeyguardQuickAffordanceConfig$stateInternal$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((HomeControlsKeyguardQuickAffordanceConfig$stateInternal$1) create((ProducerScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.systemui.keyguard.data.quickaffordance.HomeControlsKeyguardQuickAffordanceConfig$stateInternal$1$callback$1, java.lang.Object] */
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
            final ProducerScope producerScope = (ProducerScope) this.L$0;
            final HomeControlsKeyguardQuickAffordanceConfig homeControlsKeyguardQuickAffordanceConfig = this.this$0;
            final ?? r1 = new ControlsListingController.ControlsListingCallback() { // from class: com.android.systemui.keyguard.data.quickaffordance.HomeControlsKeyguardQuickAffordanceConfig$stateInternal$1$callback$1
                @Override // com.android.systemui.controls.management.ControlsListingController.ControlsListingCallback
                public final void onServicesUpdated(List list) {
                    List list2;
                    boolean z;
                    ControlsComponent.Visibility visibility;
                    Object obj2;
                    boolean z2;
                    HomeControlsKeyguardQuickAffordanceConfig homeControlsKeyguardQuickAffordanceConfig2 = HomeControlsKeyguardQuickAffordanceConfig.this;
                    ControlsController controlsController = (ControlsController) homeControlsKeyguardQuickAffordanceConfig2.component.getControlsController().orElse(null);
                    if (controlsController != null) {
                        list2 = ((ControlsControllerImpl) controlsController).getFavorites();
                    } else {
                        list2 = null;
                    }
                    ChannelExt channelExt = ChannelExt.INSTANCE;
                    ControlsComponent controlsComponent = homeControlsKeyguardQuickAffordanceConfig2.component;
                    boolean z3 = controlsComponent.featureEnabled;
                    boolean z4 = false;
                    if (list2 != null && (!list2.isEmpty())) {
                        z = true;
                    } else {
                        z = false;
                    }
                    ArrayList arrayList = (ArrayList) list;
                    if (!arrayList.isEmpty()) {
                        Iterator it = arrayList.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            }
                            if (((ControlsServiceInfo) it.next()).panelActivity != null) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            if (z2) {
                                z4 = true;
                                break;
                            }
                        }
                    }
                    boolean z5 = !arrayList.isEmpty();
                    controlsComponent.controlsTileResourceConfiguration.getClass();
                    if (!controlsComponent.featureEnabled) {
                        visibility = ControlsComponent.Visibility.UNAVAILABLE;
                    } else {
                        if (controlsComponent.lockPatternUtils.getStrongAuthForUser(((UserTrackerImpl) controlsComponent.userTracker).getUserHandle().getIdentifier()) == 1) {
                            visibility = ControlsComponent.Visibility.AVAILABLE_AFTER_UNLOCK;
                        } else if (!((Boolean) controlsComponent.canShowWhileLockedSetting.getValue()).booleanValue() && !controlsComponent.keyguardStateController.isUnlocked()) {
                            visibility = ControlsComponent.Visibility.AVAILABLE_AFTER_UNLOCK;
                        } else {
                            visibility = ControlsComponent.Visibility.AVAILABLE;
                        }
                    }
                    Integer valueOf = Integer.valueOf(R.drawable.controls_icon);
                    if (z3 && ((z || z4) && z5 && valueOf != null && visibility == ControlsComponent.Visibility.AVAILABLE)) {
                        int intValue = valueOf.intValue();
                        controlsComponent.controlsTileResourceConfiguration.getClass();
                        obj2 = new KeyguardQuickAffordanceConfig.LockScreenState.Visible(new Icon.Resource(intValue, new ContentDescription.Resource(R.string.quick_controls_title)), null, 2, null);
                    } else {
                        obj2 = KeyguardQuickAffordanceConfig.LockScreenState.Hidden.INSTANCE;
                    }
                    ChannelExt.trySendWithFailureLogging$default(channelExt, producerScope, obj2, "HomeControlsKeyguardQuickAffordanceConfig");
                }
            };
            ((ControlsListingControllerImpl) this.$listingController).addCallback(r1);
            final ControlsListingController controlsListingController = this.$listingController;
            Function0 function0 = new Function0() { // from class: com.android.systemui.keyguard.data.quickaffordance.HomeControlsKeyguardQuickAffordanceConfig$stateInternal$1.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    ((ControlsListingControllerImpl) ControlsListingController.this).removeCallback(r1);
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
