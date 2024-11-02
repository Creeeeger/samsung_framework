package com.samsung.android.media.face;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.util.Log;
import java.util.ArrayList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class SemFaceDetection {
    public final long[] mFdPointer;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public enum ProcessingMode {
        /* JADX INFO: Fake field, exist only in values array */
        HIGH_DETECTION_RATE_MODE(0),
        /* JADX INFO: Fake field, exist only in values array */
        FAST_SPEED_MODE(1);

        private int mValue;

        ProcessingMode(int i) {
            this.mValue = i;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public final class Settings {
        public Settings() {
            ProcessingMode[] processingModeArr = ProcessingMode.$VALUES;
        }
    }

    static {
        try {
            System.loadLibrary("FacePreProcessing_jni.camera.samsung");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public SemFaceDetection() {
        this.mFdPointer = null;
        this.mFdPointer = r0;
        long[] jArr = {0};
    }

    private static native int detectionCreateSupportMultiInstance(long[] jArr, Settings settings);

    private static native int detectionDestroySupportMultiInstance(long[] jArr);

    private static native int detectionFindFaceOnBitmapSupportMultiInstance(long[] jArr, Bitmap bitmap);

    private static native int detectionGetFacePoseSupportMultiInstance(long[] jArr, int i);

    private static native Rect detectionGetFaceRectSupportMultiInstance(long[] jArr, int i);

    public final void init() {
        long[] jArr = this.mFdPointer;
        if (jArr != null) {
            if (jArr[0] != 0) {
                Log.d("SemFaceDetection", "function release() is processed before the second function call for init()");
                release();
            }
            detectionCreateSupportMultiInstance(jArr, null);
            return;
        }
        throw new IllegalStateException("Improperly instantiated");
    }

    public final void release() {
        long[] jArr = this.mFdPointer;
        if (jArr != null) {
            if (jArr[0] == 0) {
                Log.d("SemFaceDetection", "The function init() is not yet called");
                return;
            } else {
                detectionDestroySupportMultiInstance(jArr);
                jArr[0] = 0;
                return;
            }
        }
        throw new IllegalStateException("Improperly instantiated");
    }

    public final int run(Bitmap bitmap, ArrayList arrayList) {
        long[] jArr = this.mFdPointer;
        if (jArr != null) {
            if (jArr[0] != 0) {
                if (bitmap != null) {
                    if (bitmap.getWidth() > 0 && bitmap.getHeight() > 0) {
                        arrayList.clear();
                        int detectionFindFaceOnBitmapSupportMultiInstance = detectionFindFaceOnBitmapSupportMultiInstance(jArr, bitmap);
                        if (detectionFindFaceOnBitmapSupportMultiInstance > 0) {
                            for (int i = 0; i < detectionFindFaceOnBitmapSupportMultiInstance; i++) {
                                arrayList.add(new SemFace(detectionGetFaceRectSupportMultiInstance(jArr, i), detectionGetFacePoseSupportMultiInstance(jArr, i)));
                            }
                        }
                        return detectionFindFaceOnBitmapSupportMultiInstance;
                    }
                    throw new IllegalArgumentException("Invalid dimension of image [" + bitmap.getWidth() + "x" + bitmap.getHeight() + "]");
                }
                throw new IllegalArgumentException("Image data is null");
            }
            throw new IllegalStateException("The function init() is not yet called");
        }
        throw new IllegalStateException("Improperly instantiated");
    }
}
