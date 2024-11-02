package kotlinx.coroutines;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class JobImpl extends JobSupport {
    public final boolean handlesException;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Code restructure failed: missing block: B:10:0x002e, code lost:
    
        if ((r4 instanceof kotlinx.coroutines.ChildHandleNode) == false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0030, code lost:
    
        r4 = (kotlinx.coroutines.ChildHandleNode) r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0034, code lost:
    
        if (r4 == null) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0036, code lost:
    
        r4 = r4.getJob();
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x003a, code lost:
    
        if (r4 != null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0033, code lost:
    
        r4 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x001c, code lost:
    
        if (r4 != null) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0023, code lost:
    
        if (r4.getHandlesException$external__kotlinx_coroutines__android_common__kotlinx_coroutines() == false) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0026, code lost:
    
        r4 = (kotlinx.coroutines.ChildHandle) r4._parentHandle.value;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public JobImpl(kotlinx.coroutines.Job r4) {
        /*
            r3 = this;
            r0 = 1
            r3.<init>(r0)
            r3.initParentJob(r4)
            kotlinx.atomicfu.AtomicRef r4 = r3._parentHandle
            java.lang.Object r4 = r4.value
            kotlinx.coroutines.ChildHandle r4 = (kotlinx.coroutines.ChildHandle) r4
            boolean r1 = r4 instanceof kotlinx.coroutines.ChildHandleNode
            r2 = 0
            if (r1 == 0) goto L15
            kotlinx.coroutines.ChildHandleNode r4 = (kotlinx.coroutines.ChildHandleNode) r4
            goto L16
        L15:
            r4 = r2
        L16:
            if (r4 == 0) goto L3c
            kotlinx.coroutines.JobSupport r4 = r4.getJob()
            if (r4 != 0) goto L1f
            goto L3c
        L1f:
            boolean r1 = r4.getHandlesException$external__kotlinx_coroutines__android_common__kotlinx_coroutines()
            if (r1 == 0) goto L26
            goto L3d
        L26:
            kotlinx.atomicfu.AtomicRef r4 = r4._parentHandle
            java.lang.Object r4 = r4.value
            kotlinx.coroutines.ChildHandle r4 = (kotlinx.coroutines.ChildHandle) r4
            boolean r1 = r4 instanceof kotlinx.coroutines.ChildHandleNode
            if (r1 == 0) goto L33
            kotlinx.coroutines.ChildHandleNode r4 = (kotlinx.coroutines.ChildHandleNode) r4
            goto L34
        L33:
            r4 = r2
        L34:
            if (r4 == 0) goto L3c
            kotlinx.coroutines.JobSupport r4 = r4.getJob()
            if (r4 != 0) goto L1f
        L3c:
            r0 = 0
        L3d:
            r3.handlesException = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.JobImpl.<init>(kotlinx.coroutines.Job):void");
    }

    @Override // kotlinx.coroutines.JobSupport
    public final boolean getHandlesException$external__kotlinx_coroutines__android_common__kotlinx_coroutines() {
        return this.handlesException;
    }

    @Override // kotlinx.coroutines.JobSupport
    public final boolean getOnCancelComplete$external__kotlinx_coroutines__android_common__kotlinx_coroutines() {
        return true;
    }
}
