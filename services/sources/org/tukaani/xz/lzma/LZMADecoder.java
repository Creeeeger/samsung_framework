package org.tukaani.xz.lzma;

import com.android.internal.util.FrameworkStatsLog;
import java.lang.reflect.Array;
import org.tukaani.xz.lz.LZDecoder;
import org.tukaani.xz.rangecoder.RangeDecoder;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes2.dex */
public final class LZMADecoder {
    public final short[] distAlign;
    public final short[][] distSlots;
    public final short[][] distSpecial;
    public final short[][] isMatch;
    public final short[] isRep;
    public final short[] isRep0;
    public final short[][] isRep0Long;
    public final short[] isRep1;
    public final short[] isRep2;
    public final LiteralDecoder literalDecoder;
    public final LZDecoder lz;
    public final LengthDecoder matchLenDecoder;
    public final int posMask;
    public final RangeDecoder rc;
    public final LengthDecoder repLenDecoder;
    public final int[] reps = new int[4];
    public final State state = new State();

    /* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
    public final class LengthDecoder {
        public final short[] choice = new short[2];
        public final short[] high;
        public final short[][] low;
        public final short[][] mid;

        public LengthDecoder() {
            Class cls = Short.TYPE;
            this.low = (short[][]) Array.newInstance((Class<?>) cls, 16, 8);
            this.mid = (short[][]) Array.newInstance((Class<?>) cls, 16, 8);
            this.high = new short[256];
        }

        public final int decode(int i) {
            LZMADecoder lZMADecoder = LZMADecoder.this;
            RangeDecoder rangeDecoder = lZMADecoder.rc;
            short[] sArr = this.choice;
            return rangeDecoder.decodeBit(sArr, 0) == 0 ? lZMADecoder.rc.decodeBitTree(this.low[i]) + 2 : lZMADecoder.rc.decodeBit(sArr, 1) == 0 ? lZMADecoder.rc.decodeBitTree(this.mid[i]) + 10 : lZMADecoder.rc.decodeBitTree(this.high) + 18;
        }

        public final void reset() {
            short[][] sArr;
            RangeDecoder.initProbs(this.choice);
            int i = 0;
            while (true) {
                sArr = this.low;
                if (i >= sArr.length) {
                    break;
                }
                RangeDecoder.initProbs(sArr[i]);
                i++;
            }
            for (int i2 = 0; i2 < sArr.length; i2++) {
                RangeDecoder.initProbs(this.mid[i2]);
            }
            RangeDecoder.initProbs(this.high);
        }
    }

    /* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
    public final class LiteralDecoder {
        public final int lc;
        public final int literalPosMask;
        public final LiteralSubdecoder[] subdecoders;

        /* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
        public final class LiteralSubdecoder {
            public final short[] probs = new short[FrameworkStatsLog.APP_STANDBY_BUCKET_CHANGED__MAIN_REASON__MAIN_USAGE];

            public LiteralSubdecoder() {
            }
        }

        public LiteralDecoder(int i, int i2) {
            this.lc = i;
            this.literalPosMask = (1 << i2) - 1;
            this.subdecoders = new LiteralSubdecoder[1 << (i + i2)];
            int i3 = 0;
            while (true) {
                LiteralSubdecoder[] literalSubdecoderArr = this.subdecoders;
                if (i3 >= literalSubdecoderArr.length) {
                    return;
                }
                literalSubdecoderArr[i3] = new LiteralSubdecoder();
                i3++;
            }
        }
    }

    public LZMADecoder(LZDecoder lZDecoder, RangeDecoder rangeDecoder, int i, int i2, int i3) {
        Class cls = Short.TYPE;
        this.isMatch = (short[][]) Array.newInstance((Class<?>) cls, 12, 16);
        this.isRep = new short[12];
        this.isRep0 = new short[12];
        this.isRep1 = new short[12];
        this.isRep2 = new short[12];
        this.isRep0Long = (short[][]) Array.newInstance((Class<?>) cls, 12, 16);
        this.distSlots = (short[][]) Array.newInstance((Class<?>) cls, 4, 64);
        this.distSpecial = new short[][]{new short[2], new short[2], new short[4], new short[4], new short[8], new short[8], new short[16], new short[16], new short[32], new short[32]};
        this.distAlign = new short[16];
        this.posMask = (1 << i3) - 1;
        this.matchLenDecoder = new LengthDecoder();
        this.repLenDecoder = new LengthDecoder();
        this.lz = lZDecoder;
        this.rc = rangeDecoder;
        this.literalDecoder = new LiteralDecoder(i, i2);
        reset();
    }

    public final void decode() {
        int i;
        int i2;
        LZDecoder lZDecoder = this.lz;
        int i3 = lZDecoder.pendingLen;
        if (i3 > 0) {
            lZDecoder.repeat(lZDecoder.pendingDist, i3);
        }
        while (true) {
            int i4 = lZDecoder.pos;
            int i5 = lZDecoder.limit;
            RangeDecoder rangeDecoder = this.rc;
            if (i4 >= i5) {
                rangeDecoder.normalize();
                return;
            }
            int i6 = i4 & this.posMask;
            State state = this.state;
            int i7 = 1;
            if (rangeDecoder.decodeBit(this.isMatch[state.state], i6) == 0) {
                LiteralDecoder literalDecoder = this.literalDecoder;
                LZDecoder lZDecoder2 = LZMADecoder.this.lz;
                int i8 = lZDecoder2.pos;
                int i9 = i8 - 1;
                if (i8 <= 0) {
                    i9 += lZDecoder2.bufSize;
                }
                int i10 = lZDecoder2.buf[i9] & 255;
                int i11 = literalDecoder.lc;
                LiteralDecoder.LiteralSubdecoder literalSubdecoder = literalDecoder.subdecoders[(i10 >> (8 - i11)) + ((i8 & literalDecoder.literalPosMask) << i11)];
                LZMADecoder lZMADecoder = LZMADecoder.this;
                int i12 = lZMADecoder.state.state;
                LZDecoder lZDecoder3 = lZMADecoder.lz;
                RangeDecoder rangeDecoder2 = lZMADecoder.rc;
                short[] sArr = literalSubdecoder.probs;
                if (i12 < 7) {
                    do {
                        i7 = (i7 << 1) | rangeDecoder2.decodeBit(sArr, i7);
                    } while (i7 < 256);
                } else {
                    int i13 = lZMADecoder.reps[0];
                    int i14 = lZDecoder3.pos;
                    int i15 = (i14 - i13) - 1;
                    if (i13 >= i14) {
                        i15 += lZDecoder3.bufSize;
                    }
                    int i16 = lZDecoder3.buf[i15] & 255;
                    int i17 = 1;
                    int i18 = 256;
                    do {
                        i16 <<= 1;
                        int i19 = i16 & i18;
                        int decodeBit = rangeDecoder2.decodeBit(sArr, i18 + i19 + i17);
                        i17 = (i17 << 1) | decodeBit;
                        i18 &= (~i19) ^ (0 - decodeBit);
                    } while (i17 < 256);
                    i7 = i17;
                }
                int i20 = lZDecoder3.pos;
                int i21 = i20 + 1;
                lZDecoder3.pos = i21;
                lZDecoder3.buf[i20] = (byte) i7;
                if (lZDecoder3.full < i21) {
                    lZDecoder3.full = i21;
                }
                State state2 = lZMADecoder.state;
                int i22 = state2.state;
                if (i22 <= 3) {
                    state2.state = 0;
                } else if (i22 <= 9) {
                    state2.state = i22 - 3;
                } else {
                    state2.state = i22 - 6;
                }
            } else {
                int decodeBit2 = rangeDecoder.decodeBit(this.isRep, state.state);
                int[] iArr = this.reps;
                if (decodeBit2 == 0) {
                    state.state = state.state >= 7 ? 10 : 7;
                    iArr[3] = iArr[2];
                    iArr[2] = iArr[1];
                    iArr[1] = iArr[0];
                    i2 = this.matchLenDecoder.decode(i6);
                    int decodeBitTree = rangeDecoder.decodeBitTree(this.distSlots[i2 < 6 ? i2 - 2 : 3]);
                    if (decodeBitTree < 4) {
                        iArr[0] = decodeBitTree;
                    } else {
                        int i23 = decodeBitTree >> 1;
                        int i24 = ((decodeBitTree & 1) | 2) << (i23 - 1);
                        iArr[0] = i24;
                        if (decodeBitTree < 14) {
                            short[] sArr2 = this.distSpecial[decodeBitTree - 4];
                            int i25 = 0;
                            int i26 = 0;
                            int i27 = 1;
                            while (true) {
                                int decodeBit3 = rangeDecoder.decodeBit(sArr2, i27);
                                i27 = (i27 << 1) | decodeBit3;
                                int i28 = i26 + 1;
                                i25 |= decodeBit3 << i26;
                                if (i27 >= sArr2.length) {
                                    break;
                                } else {
                                    i26 = i28;
                                }
                            }
                            iArr[0] = i24 | i25;
                        } else {
                            int i29 = i23 - 5;
                            int i30 = 0;
                            do {
                                rangeDecoder.normalize();
                                int i31 = rangeDecoder.range >>> 1;
                                rangeDecoder.range = i31;
                                int i32 = rangeDecoder.code;
                                int i33 = (i32 - i31) >>> 31;
                                rangeDecoder.code = i32 - (i31 & (i33 - 1));
                                i30 = (i30 << 1) | (1 - i33);
                                i29--;
                            } while (i29 != 0);
                            int i34 = i24 | (i30 << 4);
                            iArr[0] = i34;
                            int i35 = 0;
                            int i36 = 0;
                            int i37 = 1;
                            while (true) {
                                short[] sArr3 = this.distAlign;
                                int decodeBit4 = rangeDecoder.decodeBit(sArr3, i37);
                                i37 = (i37 << 1) | decodeBit4;
                                int i38 = i36 + 1;
                                i35 |= decodeBit4 << i36;
                                if (i37 >= sArr3.length) {
                                    break;
                                } else {
                                    i36 = i38;
                                }
                            }
                            iArr[0] = i34 | i35;
                        }
                    }
                } else {
                    if (rangeDecoder.decodeBit(this.isRep0, state.state) == 0) {
                        if (rangeDecoder.decodeBit(this.isRep0Long[state.state], i6) == 0) {
                            state.state = state.state >= 7 ? 11 : 9;
                            i2 = i7;
                        }
                    } else {
                        if (rangeDecoder.decodeBit(this.isRep1, state.state) == 0) {
                            i = iArr[1];
                        } else {
                            if (rangeDecoder.decodeBit(this.isRep2, state.state) == 0) {
                                i = iArr[2];
                            } else {
                                i = iArr[3];
                                iArr[3] = iArr[2];
                            }
                            iArr[2] = iArr[1];
                        }
                        iArr[1] = iArr[0];
                        iArr[0] = i;
                    }
                    state.state = state.state < 7 ? 8 : 11;
                    i7 = this.repLenDecoder.decode(i6);
                    i2 = i7;
                }
                lZDecoder.repeat(iArr[0], i2);
            }
        }
    }

    public final void reset() {
        int[] iArr = this.reps;
        int i = 0;
        iArr[0] = 0;
        iArr[1] = 0;
        iArr[2] = 0;
        iArr[3] = 0;
        this.state.state = 0;
        int i2 = 0;
        while (true) {
            short[][] sArr = this.isMatch;
            if (i2 >= sArr.length) {
                break;
            }
            RangeDecoder.initProbs(sArr[i2]);
            i2++;
        }
        RangeDecoder.initProbs(this.isRep);
        RangeDecoder.initProbs(this.isRep0);
        RangeDecoder.initProbs(this.isRep1);
        RangeDecoder.initProbs(this.isRep2);
        int i3 = 0;
        while (true) {
            short[][] sArr2 = this.isRep0Long;
            if (i3 >= sArr2.length) {
                break;
            }
            RangeDecoder.initProbs(sArr2[i3]);
            i3++;
        }
        int i4 = 0;
        while (true) {
            short[][] sArr3 = this.distSlots;
            if (i4 >= sArr3.length) {
                break;
            }
            RangeDecoder.initProbs(sArr3[i4]);
            i4++;
        }
        int i5 = 0;
        while (true) {
            short[][] sArr4 = this.distSpecial;
            if (i5 >= sArr4.length) {
                break;
            }
            RangeDecoder.initProbs(sArr4[i5]);
            i5++;
        }
        RangeDecoder.initProbs(this.distAlign);
        while (true) {
            LiteralDecoder.LiteralSubdecoder[] literalSubdecoderArr = this.literalDecoder.subdecoders;
            if (i >= literalSubdecoderArr.length) {
                this.matchLenDecoder.reset();
                this.repLenDecoder.reset();
                return;
            } else {
                RangeDecoder.initProbs(literalSubdecoderArr[i].probs);
                i++;
            }
        }
    }
}
