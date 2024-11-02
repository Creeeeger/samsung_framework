package com.android.app.viewcapture;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SimpleViewCapture extends ViewCapture {
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public SimpleViewCapture(java.lang.String r4) {
        /*
            r3 = this;
            com.android.app.viewcapture.LooperExecutor r0 = com.android.app.viewcapture.ViewCapture.MAIN_EXECUTOR
            r0.getClass()
            com.android.app.viewcapture.SimpleViewCapture$1 r1 = new java.util.concurrent.Callable() { // from class: com.android.app.viewcapture.SimpleViewCapture.1
                static {
                    /*
                        com.android.app.viewcapture.SimpleViewCapture$1 r0 = new com.android.app.viewcapture.SimpleViewCapture$1
                        r0.<init>()
                        
                        // error: 0x0005: SPUT (r0 I:com.android.app.viewcapture.SimpleViewCapture$1) com.android.app.viewcapture.SimpleViewCapture.1.INSTANCE com.android.app.viewcapture.SimpleViewCapture$1
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.app.viewcapture.SimpleViewCapture.AnonymousClass1.<clinit>():void");
                }

                {
                    /*
                        r0 = this;
                        r0.<init>()
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.app.viewcapture.SimpleViewCapture.AnonymousClass1.<init>():void");
                }

                @Override // java.util.concurrent.Callable
                public final java.lang.Object call() {
                    /*
                        r0 = this;
                        android.view.Choreographer r0 = android.view.Choreographer.getInstance()
                        return r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.app.viewcapture.SimpleViewCapture.AnonymousClass1.call():java.lang.Object");
                }
            }
            r1.getClass()
            java.util.concurrent.FutureTask r2 = new java.util.concurrent.FutureTask
            r2.<init>(r1)
            r0.execute(r2)
            java.lang.Object r0 = r2.get()
            android.view.Choreographer r0 = (android.view.Choreographer) r0
            android.os.HandlerThread r1 = new android.os.HandlerThread
            r2 = -2
            r1.<init>(r4, r2)
            r1.start()
            com.android.app.viewcapture.LooperExecutor r4 = new com.android.app.viewcapture.LooperExecutor
            android.os.Looper r1 = r1.getLooper()
            r4.<init>(r1)
            r1 = 2000(0x7d0, float:2.803E-42)
            r2 = 300(0x12c, float:4.2E-43)
            r3.<init>(r1, r2, r0, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.app.viewcapture.SimpleViewCapture.<init>(java.lang.String):void");
    }
}
