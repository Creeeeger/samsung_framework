package org.tukaani.xz.lzma;

import com.android.internal.util.FrameworkStatsLog;
import java.lang.reflect.Array;
import org.tukaani.xz.rangecoder.RangeCoder;

/* loaded from: classes2.dex */
public abstract class LZMACoder {
    public final int posMask;
    public final int[] reps = new int[4];
    public final State state = new State();
    public final short[][] isMatch = (short[][]) Array.newInstance((Class<?>) Short.TYPE, 12, 16);
    public final short[] isRep = new short[12];
    public final short[] isRep0 = new short[12];
    public final short[] isRep1 = new short[12];
    public final short[] isRep2 = new short[12];
    public final short[][] isRep0Long = (short[][]) Array.newInstance((Class<?>) Short.TYPE, 12, 16);
    public final short[][] distSlots = (short[][]) Array.newInstance((Class<?>) Short.TYPE, 4, 64);
    public final short[][] distSpecial = {new short[2], new short[2], new short[4], new short[4], new short[8], new short[8], new short[16], new short[16], new short[32], new short[32]};
    public final short[] distAlign = new short[16];

    public static final int getDistState(int i) {
        if (i < 6) {
            return i - 2;
        }
        return 3;
    }

    public LZMACoder(int i) {
        this.posMask = (1 << i) - 1;
    }

    public void reset() {
        int[] iArr = this.reps;
        int i = 0;
        iArr[0] = 0;
        iArr[1] = 0;
        iArr[2] = 0;
        iArr[3] = 0;
        this.state.reset();
        int i2 = 0;
        while (true) {
            short[][] sArr = this.isMatch;
            if (i2 >= sArr.length) {
                break;
            }
            RangeCoder.initProbs(sArr[i2]);
            i2++;
        }
        RangeCoder.initProbs(this.isRep);
        RangeCoder.initProbs(this.isRep0);
        RangeCoder.initProbs(this.isRep1);
        RangeCoder.initProbs(this.isRep2);
        int i3 = 0;
        while (true) {
            short[][] sArr2 = this.isRep0Long;
            if (i3 >= sArr2.length) {
                break;
            }
            RangeCoder.initProbs(sArr2[i3]);
            i3++;
        }
        int i4 = 0;
        while (true) {
            short[][] sArr3 = this.distSlots;
            if (i4 >= sArr3.length) {
                break;
            }
            RangeCoder.initProbs(sArr3[i4]);
            i4++;
        }
        while (true) {
            short[][] sArr4 = this.distSpecial;
            if (i < sArr4.length) {
                RangeCoder.initProbs(sArr4[i]);
                i++;
            } else {
                RangeCoder.initProbs(this.distAlign);
                return;
            }
        }
    }

    /* loaded from: classes2.dex */
    public abstract class LiteralCoder {
        public final int lc;
        public final int literalPosMask;

        public LiteralCoder(int i, int i2) {
            this.lc = i;
            this.literalPosMask = (1 << i2) - 1;
        }

        public final int getSubcoderIndex(int i, int i2) {
            int i3 = this.lc;
            return (i >> (8 - i3)) + ((this.literalPosMask & i2) << i3);
        }

        /* loaded from: classes2.dex */
        public abstract class LiteralSubcoder {
            public final short[] probs = new short[FrameworkStatsLog.APP_STANDBY_BUCKET_CHANGED__MAIN_REASON__MAIN_USAGE];

            public LiteralSubcoder() {
            }

            public void reset() {
                RangeCoder.initProbs(this.probs);
            }
        }
    }

    /* loaded from: classes2.dex */
    public abstract class LengthCoder {
        public final short[] choice = new short[2];
        public final short[][] low = (short[][]) Array.newInstance((Class<?>) Short.TYPE, 16, 8);
        public final short[][] mid = (short[][]) Array.newInstance((Class<?>) Short.TYPE, 16, 8);
        public final short[] high = new short[256];

        public LengthCoder() {
        }

        public void reset() {
            RangeCoder.initProbs(this.choice);
            int i = 0;
            while (true) {
                short[][] sArr = this.low;
                if (i >= sArr.length) {
                    break;
                }
                RangeCoder.initProbs(sArr[i]);
                i++;
            }
            for (int i2 = 0; i2 < this.low.length; i2++) {
                RangeCoder.initProbs(this.mid[i2]);
            }
            RangeCoder.initProbs(this.high);
        }
    }
}
