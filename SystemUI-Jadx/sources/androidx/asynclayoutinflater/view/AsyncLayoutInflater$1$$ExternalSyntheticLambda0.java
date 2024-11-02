package androidx.asynclayoutinflater.view;

import androidx.asynclayoutinflater.view.AsyncLayoutInflater;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class AsyncLayoutInflater$1$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ AsyncLayoutInflater.InflateRequest f$1;

    public /* synthetic */ AsyncLayoutInflater$1$$ExternalSyntheticLambda0(Object obj, AsyncLayoutInflater.InflateRequest inflateRequest, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = inflateRequest;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                AsyncLayoutInflater.triggerCallbacks(this.f$1, ((AsyncLayoutInflater.AnonymousClass1) this.f$0).this$0.mInflateThread);
                return;
            default:
                AsyncLayoutInflater.InflateThread inflateThread = (AsyncLayoutInflater.InflateThread) this.f$0;
                AsyncLayoutInflater.InflateRequest inflateRequest = this.f$1;
                AsyncLayoutInflater.InflateThread inflateThread2 = AsyncLayoutInflater.InflateThread.sInstance;
                inflateThread.getClass();
                AsyncLayoutInflater.triggerCallbacks(inflateRequest, inflateThread);
                return;
        }
    }
}
