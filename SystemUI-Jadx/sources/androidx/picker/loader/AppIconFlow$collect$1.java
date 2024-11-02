package androidx.picker.loader;

import com.samsung.android.nexus.video.VideoPlayer;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "androidx.picker.loader.AppIconFlow", f = "AppIconFlow.kt", l = {32, 33}, m = "collect")
/* loaded from: classes.dex */
public final class AppIconFlow$collect$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ AppIconFlow this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppIconFlow$collect$1(AppIconFlow appIconFlow, Continuation<? super AppIconFlow$collect$1> continuation) {
        super(continuation);
        this.this$0 = appIconFlow;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= VideoPlayer.MEDIA_ERROR_SYSTEM;
        return this.this$0.collect(null, this);
    }
}
