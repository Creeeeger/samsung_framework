package android.graphics;

import libcore.util.NativeAllocationRegistry;

/* loaded from: classes.dex */
public class ColorFilter {
    private Runnable mCleaner;
    private long mNativeInstance;

    /* renamed from: -$$Nest$smnativeGetFinalizer */
    static /* bridge */ /* synthetic */ long m1074$$Nest$smnativeGetFinalizer() {
        return nativeGetFinalizer();
    }

    private static native long nativeGetFinalizer();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class NoImagePreloadHolder {
        public static final NativeAllocationRegistry sRegistry = NativeAllocationRegistry.createMalloced(ColorFilter.class.getClassLoader(), ColorFilter.m1074$$Nest$smnativeGetFinalizer());

        private NoImagePreloadHolder() {
        }
    }

    @Deprecated
    public ColorFilter() {
    }

    long createNativeInstance() {
        return 0L;
    }

    public final synchronized void discardNativeInstance() {
        if (this.mNativeInstance != 0) {
            this.mCleaner.run();
            this.mCleaner = null;
            this.mNativeInstance = 0L;
        }
    }

    public final synchronized long getNativeInstance() {
        if (this.mNativeInstance == 0) {
            long createNativeInstance = createNativeInstance();
            this.mNativeInstance = createNativeInstance;
            if (createNativeInstance != 0) {
                this.mCleaner = NoImagePreloadHolder.sRegistry.registerNativeAllocation(this, this.mNativeInstance);
            }
        }
        return this.mNativeInstance;
    }
}
