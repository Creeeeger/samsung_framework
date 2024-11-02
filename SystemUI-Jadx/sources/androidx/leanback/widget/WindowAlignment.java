package androidx.leanback.widget;

import com.samsung.android.nexus.video.VideoPlayer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class WindowAlignment {
    public final Axis horizontal;
    public Axis mMainAxis;
    public Axis mSecondAxis;
    public final Axis vertical;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Axis {
        public int mMaxScroll;
        public int mMinScroll;
        public int mPaddingMax;
        public int mPaddingMin;
        public boolean mReversedFlow;
        public int mSize;
        public final int mPreferredKeyLine = 2;
        public int mWindowAlignment = 3;
        public final float mWindowAlignmentOffsetPercent = 50.0f;
        public int mMinEdge = VideoPlayer.MEDIA_ERROR_SYSTEM;
        public int mMaxEdge = Integer.MAX_VALUE;

        public Axis(String str) {
        }

        public final int calculateKeyline() {
            boolean z = this.mReversedFlow;
            float f = this.mWindowAlignmentOffsetPercent;
            if (!z) {
                if (f == -1.0f) {
                    return 0;
                }
                return 0 + ((int) ((this.mSize * f) / 100.0f));
            }
            int i = this.mSize;
            int i2 = i + 0;
            if (f != -1.0f) {
                return i2 - ((int) ((i * f) / 100.0f));
            }
            return i2;
        }

        public final int getScroll(int i) {
            boolean z;
            int i2;
            int i3;
            int i4 = this.mSize;
            int calculateKeyline = calculateKeyline();
            int i5 = this.mMinEdge;
            boolean z2 = false;
            if (i5 == Integer.MIN_VALUE) {
                z = true;
            } else {
                z = false;
            }
            int i6 = this.mMaxEdge;
            if (i6 == Integer.MAX_VALUE) {
                z2 = true;
            }
            if (!z) {
                int i7 = this.mPaddingMin;
                int i8 = calculateKeyline - i7;
                if (this.mReversedFlow ? (this.mWindowAlignment & 2) != 0 : (this.mWindowAlignment & 1) != 0) {
                    if (i - i5 <= i8) {
                        int i9 = i5 - i7;
                        if (!z2 && i9 > (i3 = this.mMaxScroll)) {
                            return i3;
                        }
                        return i9;
                    }
                }
            }
            if (!z2) {
                int i10 = this.mPaddingMax;
                int i11 = (i4 - calculateKeyline) - i10;
                if (this.mReversedFlow ? (1 & this.mWindowAlignment) != 0 : (this.mWindowAlignment & 2) != 0) {
                    if (i6 - i <= i11) {
                        int i12 = i6 - (i4 - i10);
                        if (!z && i12 < (i2 = this.mMinScroll)) {
                            return i2;
                        }
                        return i12;
                    }
                }
            }
            return i - calculateKeyline;
        }

        public final String toString() {
            return " min:" + this.mMinEdge + " " + this.mMinScroll + " max:" + this.mMaxEdge + " " + this.mMaxScroll;
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0037, code lost:
        
            r7.mMinScroll = r0 - r7.mPaddingMin;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x0053, code lost:
        
            r7.mMaxScroll = (r4 - r7.mPaddingMin) - r8;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void updateMinMax(int r8, int r9, int r10, int r11) {
            /*
                Method dump skipped, instructions count: 232
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.leanback.widget.WindowAlignment.Axis.updateMinMax(int, int, int, int):void");
        }
    }

    public WindowAlignment() {
        Axis axis = new Axis("vertical");
        this.vertical = axis;
        Axis axis2 = new Axis("horizontal");
        this.horizontal = axis2;
        this.mMainAxis = axis2;
        this.mSecondAxis = axis;
    }

    public final String toString() {
        return "horizontal=" + this.horizontal + "; vertical=" + this.vertical;
    }
}
