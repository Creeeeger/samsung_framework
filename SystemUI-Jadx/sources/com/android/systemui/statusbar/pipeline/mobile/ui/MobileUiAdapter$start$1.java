package com.android.systemui.statusbar.pipeline.mobile.ui;

import android.content.Context;
import android.util.Log;
import androidx.constraintlayout.motion.widget.KeyAttributes$$ExternalSyntheticOutline0;
import com.android.systemui.BasicRune;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.log.LogLevel;
import com.android.systemui.log.LogMessage;
import com.android.systemui.statusbar.phone.StatusBarIconControllerImpl;
import com.android.systemui.statusbar.phone.StatusBarIconHolder;
import com.android.systemui.statusbar.phone.StatusBarIconList;
import java.util.Collections;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.ReadonlyStateFlow;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.statusbar.pipeline.mobile.ui.MobileUiAdapter$start$1", f = "MobileUiAdapter.kt", l = {62}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class MobileUiAdapter$start$1 extends SuspendLambda implements Function2 {
    int label;
    final /* synthetic */ MobileUiAdapter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    @DebugMetadata(c = "com.android.systemui.statusbar.pipeline.mobile.ui.MobileUiAdapter$start$1$1", f = "MobileUiAdapter.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.android.systemui.statusbar.pipeline.mobile.ui.MobileUiAdapter$start$1$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass1 extends SuspendLambda implements Function2 {
        /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ MobileUiAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(MobileUiAdapter mobileUiAdapter, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = mobileUiAdapter;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((List) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            StatusBarIconHolder holderForTag;
            String str;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                List<Integer> list = (List) this.L$0;
                MobileViewLogger mobileViewLogger = this.this$0.logger;
                mobileViewLogger.getClass();
                LogLevel logLevel = LogLevel.INFO;
                MobileViewLogger$logUiAdapterSubIdsSentToIconController$2 mobileViewLogger$logUiAdapterSubIdsSentToIconController$2 = new Function1() { // from class: com.android.systemui.statusbar.pipeline.mobile.ui.MobileViewLogger$logUiAdapterSubIdsSentToIconController$2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        return KeyAttributes$$ExternalSyntheticOutline0.m("Sub IDs in MobileUiAdapter being sent to icon controller: ", ((LogMessage) obj2).getStr1());
                    }
                };
                LogBuffer logBuffer = mobileViewLogger.buffer;
                LogMessage obtain = logBuffer.obtain("MobileViewLogger", logLevel, mobileViewLogger$logUiAdapterSubIdsSentToIconController$2, null);
                obtain.setStr1(list.toString());
                logBuffer.commit(obtain);
                MobileUiAdapter mobileUiAdapter = this.this$0;
                mobileUiAdapter.lastValue = list;
                StatusBarIconControllerImpl statusBarIconControllerImpl = (StatusBarIconControllerImpl) mobileUiAdapter.iconController;
                statusBarIconControllerImpl.mStatusBarPipelineFlags.useNewMobileIcons();
                Context context = statusBarIconControllerImpl.mContext;
                String string = context.getString(17042930);
                StatusBarIconList statusBarIconList = statusBarIconControllerImpl.mStatusBarIconList;
                StatusBarIconList.Slot slot = statusBarIconList.getSlot(string);
                statusBarIconControllerImpl.removeUnusedIconsInSlot(string, list);
                String string2 = context.getString(17042931);
                StatusBarIconList.Slot slot2 = statusBarIconList.getSlot(string2);
                if (BasicRune.STATUS_NETWORK_MULTI_SIM) {
                    statusBarIconControllerImpl.removeUnusedIconsInSlot(string2, list);
                }
                Collections.reverse(list);
                for (Integer num : list) {
                    if (BasicRune.STATUS_NETWORK_MULTI_SIM) {
                        int simOrderByIds = statusBarIconControllerImpl.mSubscriptionsOrder.getSimOrderByIds(num.intValue(), list);
                        if (num.intValue() == Integer.MAX_VALUE) {
                            simOrderByIds = 0;
                        }
                        Log.d("StatusBarIconController", "setNewMobileIconSubIds - subId: " + num + ", mobileslotId: " + simOrderByIds);
                        if (simOrderByIds == 0) {
                            holderForTag = slot.getHolderForTag(num.intValue());
                        } else {
                            holderForTag = slot2.getHolderForTag(num.intValue());
                        }
                        if (holderForTag == null) {
                            int intValue = num.intValue();
                            StatusBarIconHolder.Companion.getClass();
                            StatusBarIconHolder statusBarIconHolder = new StatusBarIconHolder(null);
                            statusBarIconHolder.type = 3;
                            statusBarIconHolder.tag = intValue;
                            if (simOrderByIds == 0) {
                                str = string;
                            } else {
                                str = string2;
                            }
                            statusBarIconControllerImpl.setIcon(str, statusBarIconHolder);
                        }
                    } else if (slot.getHolderForTag(num.intValue()) == null) {
                        int intValue2 = num.intValue();
                        StatusBarIconHolder.Companion.getClass();
                        StatusBarIconHolder statusBarIconHolder2 = new StatusBarIconHolder(null);
                        statusBarIconHolder2.type = 3;
                        statusBarIconHolder2.tag = intValue2;
                        statusBarIconControllerImpl.setIcon(string, statusBarIconHolder2);
                    }
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MobileUiAdapter$start$1(MobileUiAdapter mobileUiAdapter, Continuation<? super MobileUiAdapter$start$1> continuation) {
        super(2, continuation);
        this.this$0 = mobileUiAdapter;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new MobileUiAdapter$start$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((MobileUiAdapter$start$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
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
            MobileUiAdapter mobileUiAdapter = this.this$0;
            mobileUiAdapter.isCollecting = true;
            ReadonlyStateFlow readonlyStateFlow = mobileUiAdapter.mobileIconsViewModel.subscriptionIdsFlow;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(mobileUiAdapter, null);
            this.label = 1;
            if (FlowKt.collectLatest(readonlyStateFlow, anonymousClass1, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.INSTANCE;
    }
}
