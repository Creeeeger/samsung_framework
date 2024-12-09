package com.sec.internal.helper.picturetool;

import android.util.Log;
import android.util.Pair;

/* loaded from: classes.dex */
public class PngLazyCompressionDescriptor implements ICompressionDescriptor {
    private static final String LOG_TAG = "PngLazyCompressionDescriptor";
    private static final int STUB_IMAGE_QUALITY = 100;
    private ICompressionDescriptor mDelegate;
    private final ICompressionDescriptor mInitial;
    private final ICompressionDescriptor mPanic;
    private final int mScale;

    public PngLazyCompressionDescriptor(int i, int i2, int i3, int i4, ICompressionDescriptor iCompressionDescriptor) {
        ICompressionDescriptor iCompressionDescriptor2 = new ICompressionDescriptor() { // from class: com.sec.internal.helper.picturetool.PngLazyCompressionDescriptor.1
            @Override // com.sec.internal.helper.picturetool.ICompressionDescriptor
            public Pair<Integer, Integer> next(long j) {
                Log.d(PngLazyCompressionDescriptor.LOG_TAG, "mInitial::nex" + j);
                PngLazyCompressionDescriptor pngLazyCompressionDescriptor = PngLazyCompressionDescriptor.this;
                pngLazyCompressionDescriptor.mDelegate = pngLazyCompressionDescriptor.mPanic;
                return Pair.create(100, Integer.valueOf(PngLazyCompressionDescriptor.this.mScale));
            }
        };
        this.mInitial = iCompressionDescriptor2;
        this.mDelegate = iCompressionDescriptor2;
        this.mScale = Math.max(getStartWidthScale(i, i3), getStartHeightScale(i2, i4));
        this.mPanic = iCompressionDescriptor;
    }

    @Override // com.sec.internal.helper.picturetool.ICompressionDescriptor
    public Pair<Integer, Integer> next(long j) {
        return this.mDelegate.next(j);
    }

    private int getStartScale(int i, int i2) {
        int max = Math.max(i / i2, 1);
        if (i2 < i) {
            return max + (i % (i2 * max) == 0 ? 0 : 1);
        }
        return max;
    }

    private int getStartWidthScale(int i, int i2) {
        return getStartScale(i, i2);
    }

    private int getStartHeightScale(int i, int i2) {
        return getStartScale(i, i2);
    }
}
