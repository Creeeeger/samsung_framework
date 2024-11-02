package com.android.systemui.statusbar.pipeline.mobile.data.repository;

import com.samsung.android.nexus.video.VideoPlayer;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.statusbar.pipeline.mobile.data.repository.CarrierConfigRepository", f = "CarrierConfigRepository.kt", l = {101}, m = "startObservingCarrierConfigUpdates")
/* loaded from: classes2.dex */
public final class CarrierConfigRepository$startObservingCarrierConfigUpdates$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ CarrierConfigRepository this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CarrierConfigRepository$startObservingCarrierConfigUpdates$1(CarrierConfigRepository carrierConfigRepository, Continuation<? super CarrierConfigRepository$startObservingCarrierConfigUpdates$1> continuation) {
        super(continuation);
        this.this$0 = carrierConfigRepository;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= VideoPlayer.MEDIA_ERROR_SYSTEM;
        return this.this$0.startObservingCarrierConfigUpdates(this);
    }
}
