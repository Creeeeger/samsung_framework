package com.android.systemui.keyguard.ui.preview;

import com.android.systemui.keyguard.ui.preview.KeyguardRemotePreviewManager;
import java.util.Iterator;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DisposableHandle;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.keyguard.ui.preview.KeyguardRemotePreviewManager$PreviewLifecycleObserver$onDestroy$1", f = "KeyguardRemotePreviewManager.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class KeyguardRemotePreviewManager$PreviewLifecycleObserver$onDestroy$1 extends SuspendLambda implements Function2 {
    int label;
    final /* synthetic */ KeyguardRemotePreviewManager.PreviewLifecycleObserver this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KeyguardRemotePreviewManager$PreviewLifecycleObserver$onDestroy$1(KeyguardRemotePreviewManager.PreviewLifecycleObserver previewLifecycleObserver, Continuation<? super KeyguardRemotePreviewManager$PreviewLifecycleObserver$onDestroy$1> continuation) {
        super(2, continuation);
        this.this$0 = previewLifecycleObserver;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new KeyguardRemotePreviewManager$PreviewLifecycleObserver$onDestroy$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((KeyguardRemotePreviewManager$PreviewLifecycleObserver$onDestroy$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            KeyguardPreviewRenderer keyguardPreviewRenderer = this.this$0.renderer;
            keyguardPreviewRenderer.isDestroyed = true;
            keyguardPreviewRenderer.lockscreenSmartspaceController.disconnect();
            Iterator it = keyguardPreviewRenderer.disposables.iterator();
            while (it.hasNext()) {
                ((DisposableHandle) it.next()).dispose();
            }
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
