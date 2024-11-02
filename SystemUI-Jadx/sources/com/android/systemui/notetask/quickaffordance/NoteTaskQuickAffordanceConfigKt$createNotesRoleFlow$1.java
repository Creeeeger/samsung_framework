package com.android.systemui.notetask.quickaffordance;

import android.app.role.OnRoleHoldersChangedListener;
import android.app.role.RoleManager;
import android.os.UserHandle;
import com.android.systemui.notetask.NoteTaskController;
import com.android.systemui.notetask.NoteTaskEntryPoint;
import com.android.systemui.notetask.NoteTaskInfoResolver;
import java.util.concurrent.Executor;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.ChannelsKt;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.notetask.quickaffordance.NoteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1", f = "NoteTaskQuickAffordanceConfig.kt", l = {191}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class NoteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ Executor $executor;
    final /* synthetic */ NoteTaskController $noteTaskController;
    final /* synthetic */ NoteTaskInfoResolver $noteTaskInfoResolver;
    final /* synthetic */ RoleManager $this_createNotesRoleFlow;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1(RoleManager roleManager, Executor executor, NoteTaskInfoResolver noteTaskInfoResolver, NoteTaskController noteTaskController, Continuation<? super NoteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1> continuation) {
        super(2, continuation);
        this.$this_createNotesRoleFlow = roleManager;
        this.$executor = executor;
        this.$noteTaskInfoResolver = noteTaskInfoResolver;
        this.$noteTaskController = noteTaskController;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        NoteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1 noteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1 = new NoteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1(this.$this_createNotesRoleFlow, this.$executor, this.$noteTaskInfoResolver, this.$noteTaskController, continuation);
        noteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1.L$0 = obj;
        return noteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NoteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1) create((ProducerScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
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
            final ProducerScope producerScope = (ProducerScope) this.L$0;
            NoteTaskInfoResolver noteTaskInfoResolver = this.$noteTaskInfoResolver;
            NoteTaskController noteTaskController = this.$noteTaskController;
            NoteTaskEntryPoint noteTaskEntryPoint = NoteTaskEntryPoint.QUICK_AFFORDANCE;
            UserHandle userForHandlingNotesTaking = noteTaskController.getUserForHandlingNotesTaking(noteTaskEntryPoint);
            NoteTaskInfoResolver.Companion companion = NoteTaskInfoResolver.Companion;
            boolean z = false;
            if (noteTaskInfoResolver.resolveInfo(noteTaskEntryPoint, false, userForHandlingNotesTaking) != null) {
                z = true;
            }
            ChannelsKt.trySendBlocking(producerScope, Boolean.valueOf(z));
            final NoteTaskInfoResolver noteTaskInfoResolver2 = this.$noteTaskInfoResolver;
            final NoteTaskController noteTaskController2 = this.$noteTaskController;
            final OnRoleHoldersChangedListener onRoleHoldersChangedListener = new OnRoleHoldersChangedListener() { // from class: com.android.systemui.notetask.quickaffordance.NoteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1$callback$1
                public final void onRoleHoldersChanged(String str, UserHandle userHandle) {
                    if (str.hashCode() == 723656309 && str.equals("android.app.role.NOTES")) {
                        ProducerScope producerScope2 = ProducerScope.this;
                        NoteTaskInfoResolver noteTaskInfoResolver3 = noteTaskInfoResolver2;
                        NoteTaskController noteTaskController3 = noteTaskController2;
                        NoteTaskEntryPoint noteTaskEntryPoint2 = NoteTaskEntryPoint.QUICK_AFFORDANCE;
                        UserHandle userForHandlingNotesTaking2 = noteTaskController3.getUserForHandlingNotesTaking(noteTaskEntryPoint2);
                        NoteTaskInfoResolver.Companion companion2 = NoteTaskInfoResolver.Companion;
                        boolean z2 = false;
                        if (noteTaskInfoResolver3.resolveInfo(noteTaskEntryPoint2, false, userForHandlingNotesTaking2) != null) {
                            z2 = true;
                        }
                        ChannelsKt.trySendBlocking(producerScope2, Boolean.valueOf(z2));
                    }
                }
            };
            this.$this_createNotesRoleFlow.addOnRoleHoldersChangedListenerAsUser(this.$executor, onRoleHoldersChangedListener, UserHandle.ALL);
            final RoleManager roleManager = this.$this_createNotesRoleFlow;
            Function0 function0 = new Function0() { // from class: com.android.systemui.notetask.quickaffordance.NoteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    roleManager.removeOnRoleHoldersChangedListenerAsUser(onRoleHoldersChangedListener, UserHandle.ALL);
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
