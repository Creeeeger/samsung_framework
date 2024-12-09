package com.sec.internal.helper.picturetool;

import android.util.Log;
import android.util.Pair;

/* loaded from: classes.dex */
public class FullCompressionDescriptor implements ICompressionDescriptor {
    private static final int DEDICATED_IMAGE_QUALITY = 90;
    private static final String LOG_TAG = "FullCompressionDescriptor";
    private ICompressionDescriptor mDelegate;
    private ICompressionDescriptor mFinal;
    private final ICompressionDescriptor mInitial;
    private final long mMaxSize;
    private final int mMinDimension;
    private int mScale;
    private final ICompressionDescriptor mSecond;
    private final ICompressionDescriptor mStandard;

    public FullCompressionDescriptor(long j, int i, int i2, long j2, int i3, int i4, ICompressionDescriptor iCompressionDescriptor) throws NullPointerException {
        ICompressionDescriptor iCompressionDescriptor2 = new ICompressionDescriptor() { // from class: com.sec.internal.helper.picturetool.FullCompressionDescriptor.1
            @Override // com.sec.internal.helper.picturetool.ICompressionDescriptor
            public Pair<Integer, Integer> next(long j3) {
                Log.d(FullCompressionDescriptor.LOG_TAG, "mInitial mScale=" + FullCompressionDescriptor.this.mScale);
                FullCompressionDescriptor fullCompressionDescriptor = FullCompressionDescriptor.this;
                fullCompressionDescriptor.mDelegate = fullCompressionDescriptor.mSecond;
                return Pair.create(90, Integer.valueOf(FullCompressionDescriptor.this.mScale));
            }
        };
        this.mInitial = iCompressionDescriptor2;
        this.mSecond = new ICompressionDescriptor() { // from class: com.sec.internal.helper.picturetool.FullCompressionDescriptor.2
            @Override // com.sec.internal.helper.picturetool.ICompressionDescriptor
            public Pair<Integer, Integer> next(long j3) {
                FullCompressionDescriptor fullCompressionDescriptor = FullCompressionDescriptor.this;
                fullCompressionDescriptor.mDelegate = fullCompressionDescriptor.mStandard;
                FullCompressionDescriptor fullCompressionDescriptor2 = FullCompressionDescriptor.this;
                fullCompressionDescriptor2.mScale = Math.max(fullCompressionDescriptor2.mScale + 1, (int) Math.sqrt((j3 * Math.pow(FullCompressionDescriptor.this.mScale, 2.0d)) / FullCompressionDescriptor.this.mMaxSize));
                return Pair.create(90, Integer.valueOf(FullCompressionDescriptor.this.mScale));
            }
        };
        this.mStandard = new ICompressionDescriptor() { // from class: com.sec.internal.helper.picturetool.FullCompressionDescriptor.3
            @Override // com.sec.internal.helper.picturetool.ICompressionDescriptor
            public Pair<Integer, Integer> next(long j3) {
                int i5 = FullCompressionDescriptor.this.mScale;
                int i6 = FullCompressionDescriptor.this.mMinDimension / FullCompressionDescriptor.this.mScale;
                while (true) {
                    i5++;
                    int i7 = FullCompressionDescriptor.this.mMinDimension / i5;
                    if (i7 != i6) {
                        if (i7 == 0) {
                            FullCompressionDescriptor.this.mFinal.next(j3);
                        } else {
                            FullCompressionDescriptor.this.mScale = i5;
                            Log.d(FullCompressionDescriptor.LOG_TAG, "mStandard: Exit");
                            return Pair.create(90, Integer.valueOf(FullCompressionDescriptor.this.mScale));
                        }
                    }
                }
            }
        };
        this.mDelegate = iCompressionDescriptor2;
        this.mScale = 1;
        this.mFinal = iCompressionDescriptor;
        this.mMaxSize = j2;
        int min = Math.min(i, i3);
        int min2 = Math.min(i2, i4);
        int min3 = Math.min(i, i2);
        this.mMinDimension = min3;
        int max = Math.max(Math.max(i / min, i2 / min2), Math.max((int) Math.sqrt(j / j2), 1));
        this.mScale = max;
        if (min3 / max == 0) {
            this.mDelegate = this.mFinal;
        }
    }

    @Override // com.sec.internal.helper.picturetool.ICompressionDescriptor
    public Pair<Integer, Integer> next(long j) {
        Log.d(LOG_TAG, "FullCompressionDescriptor::next size=" + j);
        return this.mDelegate.next(j);
    }
}
