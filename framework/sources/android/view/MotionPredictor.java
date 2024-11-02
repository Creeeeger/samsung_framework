package android.view;

import android.content.Context;
import com.android.internal.R;
import libcore.util.NativeAllocationRegistry;

/* loaded from: classes4.dex */
public final class MotionPredictor {
    private final boolean mIsPredictionEnabled;
    private final long mPtr;

    /* renamed from: -$$Nest$smnativeGetNativeMotionPredictorFinalizer */
    static /* bridge */ /* synthetic */ long m5136$$Nest$smnativeGetNativeMotionPredictorFinalizer() {
        return nativeGetNativeMotionPredictorFinalizer();
    }

    private static native long nativeGetNativeMotionPredictorFinalizer();

    private static native long nativeInitialize(int i);

    private static native boolean nativeIsPredictionAvailable(long j, int i, int i2);

    private static native MotionEvent nativePredict(long j, long j2);

    private static native void nativeRecord(long j, MotionEvent motionEvent);

    /* loaded from: classes4.dex */
    private static class RegistryHolder {
        public static final NativeAllocationRegistry REGISTRY = NativeAllocationRegistry.createMalloced(MotionPredictor.class.getClassLoader(), MotionPredictor.m5136$$Nest$smnativeGetNativeMotionPredictorFinalizer());

        private RegistryHolder() {
        }
    }

    public MotionPredictor(Context context) {
        this.mIsPredictionEnabled = context.getResources().getBoolean(R.bool.config_enableMotionPrediction);
        int offsetNanos = context.getResources().getInteger(R.integer.config_motionPredictionOffsetNanos);
        long nativeInitialize = nativeInitialize(offsetNanos);
        this.mPtr = nativeInitialize;
        RegistryHolder.REGISTRY.registerNativeAllocation(this, nativeInitialize);
    }

    public void record(MotionEvent event) {
        if (!this.mIsPredictionEnabled) {
            return;
        }
        nativeRecord(this.mPtr, event);
    }

    public MotionEvent predict(long predictionTimeNanos) {
        if (!this.mIsPredictionEnabled) {
            return null;
        }
        return nativePredict(this.mPtr, predictionTimeNanos);
    }

    public boolean isPredictionAvailable(int deviceId, int source) {
        return this.mIsPredictionEnabled && nativeIsPredictionAvailable(this.mPtr, deviceId, source);
    }
}
