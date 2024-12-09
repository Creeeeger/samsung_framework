package com.sec.internal.helper;

import java.security.Key;
import java.security.KeyStore;
import java.util.function.Function;

/* compiled from: R8$$SyntheticClass */
/* loaded from: classes.dex */
public final /* synthetic */ class KeyPairManager$$ExternalSyntheticLambda0 implements Function {
    public final /* synthetic */ KeyPairManager f$0;

    public /* synthetic */ KeyPairManager$$ExternalSyntheticLambda0(KeyPairManager keyPairManager) {
        this.f$0 = keyPairManager;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        Key privateKey;
        privateKey = this.f$0.getPrivateKey((KeyStore) obj);
        return privateKey;
    }
}
