package com.android.keyguard;

import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class SecFpAuthCallback$$ExternalSyntheticLambda0 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SecFpAuthCallback f$0;
    public final /* synthetic */ int f$1;

    public /* synthetic */ SecFpAuthCallback$$ExternalSyntheticLambda0(SecFpAuthCallback secFpAuthCallback, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = secFpAuthCallback;
        this.f$1 = i;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                SecFpAuthCallback secFpAuthCallback = this.f$0;
                ((Consumer) obj).accept(SecFpMsg.obtain(6, secFpAuthCallback.mCallbackSeq, this.f$1, null, null));
                return;
            case 1:
                SecFpAuthCallback secFpAuthCallback2 = this.f$0;
                ((Consumer) obj).accept(SecFpMsg.obtain(5, secFpAuthCallback2.mCallbackSeq, this.f$1, null, null));
                return;
            default:
                SecFpAuthCallback secFpAuthCallback3 = this.f$0;
                ((Consumer) obj).accept(SecFpMsg.obtain(4, secFpAuthCallback3.mCallbackSeq, this.f$1, null, null));
                return;
        }
    }
}
