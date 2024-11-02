package com.android.systemui.keyguard.bouncer.domain.interactor;

import android.os.Build;
import com.android.systemui.CoreStartable;
import com.android.systemui.keyguard.bouncer.data.repository.BouncerMessageRepository;
import com.android.systemui.keyguard.bouncer.data.repository.BouncerMessageRepositoryImpl;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class BouncerMessageAuditLogger implements CoreStartable {
    public final BouncerMessageInteractor interactor;
    public final BouncerMessageRepository repository;
    public final CoroutineScope scope;

    public BouncerMessageAuditLogger(CoroutineScope coroutineScope, BouncerMessageRepository bouncerMessageRepository, BouncerMessageInteractor bouncerMessageInteractor) {
        this.scope = coroutineScope;
        this.repository = bouncerMessageRepository;
        this.interactor = bouncerMessageInteractor;
    }

    public final void collectAndLog(Flow flow, String str) {
        BuildersKt.launch$default(this.scope, null, null, new BouncerMessageAuditLogger$collectAndLog$1(flow, str, null), 3);
    }

    @Override // com.android.systemui.CoreStartable
    public final void start() {
        if (Build.isDebuggable()) {
            BouncerMessageRepositoryImpl bouncerMessageRepositoryImpl = (BouncerMessageRepositoryImpl) this.repository;
            collectAndLog(bouncerMessageRepositoryImpl.biometricAuthMessage, "biometricMessage: ");
            collectAndLog(bouncerMessageRepositoryImpl.primaryAuthMessage, "primaryAuthMessage: ");
            collectAndLog(bouncerMessageRepositoryImpl.customMessage, "customMessage: ");
            collectAndLog(bouncerMessageRepositoryImpl.faceAcquisitionMessage, "faceAcquisitionMessage: ");
            collectAndLog(bouncerMessageRepositoryImpl.fingerprintAcquisitionMessage, "fingerprintAcquisitionMessage: ");
            collectAndLog(bouncerMessageRepositoryImpl.authFlagsMessage, "authFlagsMessage: ");
            collectAndLog(this.interactor.bouncerMessage, "interactor.bouncerMessage: ");
        }
    }
}
