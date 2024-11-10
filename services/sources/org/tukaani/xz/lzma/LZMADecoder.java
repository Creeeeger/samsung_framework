package org.tukaani.xz.lzma;

import org.tukaani.xz.lz.LZDecoder;
import org.tukaani.xz.lzma.LZMACoder;
import org.tukaani.xz.rangecoder.RangeDecoder;

/* loaded from: classes2.dex */
public final class LZMADecoder extends LZMACoder {
    public final LiteralDecoder literalDecoder;
    public final LZDecoder lz;
    public final LengthDecoder matchLenDecoder;
    public final RangeDecoder rc;
    public final LengthDecoder repLenDecoder;

    public LZMADecoder(LZDecoder lZDecoder, RangeDecoder rangeDecoder, int i, int i2, int i3) {
        super(i3);
        this.matchLenDecoder = new LengthDecoder();
        this.repLenDecoder = new LengthDecoder();
        this.lz = lZDecoder;
        this.rc = rangeDecoder;
        this.literalDecoder = new LiteralDecoder(i, i2);
        reset();
    }

    @Override // org.tukaani.xz.lzma.LZMACoder
    public void reset() {
        super.reset();
        this.literalDecoder.reset();
        this.matchLenDecoder.reset();
        this.repLenDecoder.reset();
    }

    public boolean endMarkerDetected() {
        return this.reps[0] == -1;
    }

    public void decode() {
        int decodeRepMatch;
        this.lz.repeatPending();
        while (this.lz.hasSpace()) {
            int pos = this.lz.getPos() & this.posMask;
            if (this.rc.decodeBit(this.isMatch[this.state.get()], pos) == 0) {
                this.literalDecoder.decode();
            } else {
                if (this.rc.decodeBit(this.isRep, this.state.get()) == 0) {
                    decodeRepMatch = decodeMatch(pos);
                } else {
                    decodeRepMatch = decodeRepMatch(pos);
                }
                this.lz.repeat(this.reps[0], decodeRepMatch);
            }
        }
        this.rc.normalize();
    }

    public final int decodeMatch(int i) {
        this.state.updateMatch();
        int[] iArr = this.reps;
        iArr[3] = iArr[2];
        iArr[2] = iArr[1];
        iArr[1] = iArr[0];
        int decode = this.matchLenDecoder.decode(i);
        int decodeBitTree = this.rc.decodeBitTree(this.distSlots[LZMACoder.getDistState(decode)]);
        if (decodeBitTree < 4) {
            this.reps[0] = decodeBitTree;
        } else {
            int i2 = (decodeBitTree >> 1) - 1;
            int[] iArr2 = this.reps;
            int i3 = (2 | (decodeBitTree & 1)) << i2;
            iArr2[0] = i3;
            if (decodeBitTree < 14) {
                iArr2[0] = this.rc.decodeReverseBitTree(this.distSpecial[decodeBitTree - 4]) | i3;
            } else {
                iArr2[0] = (this.rc.decodeDirectBits(i2 - 4) << 4) | i3;
                int[] iArr3 = this.reps;
                iArr3[0] = this.rc.decodeReverseBitTree(this.distAlign) | iArr3[0];
            }
        }
        return decode;
    }

    public final int decodeRepMatch(int i) {
        int i2;
        if (this.rc.decodeBit(this.isRep0, this.state.get()) == 0) {
            if (this.rc.decodeBit(this.isRep0Long[this.state.get()], i) == 0) {
                this.state.updateShortRep();
                return 1;
            }
        } else {
            if (this.rc.decodeBit(this.isRep1, this.state.get()) == 0) {
                i2 = this.reps[1];
            } else {
                if (this.rc.decodeBit(this.isRep2, this.state.get()) == 0) {
                    i2 = this.reps[2];
                } else {
                    int[] iArr = this.reps;
                    int i3 = iArr[3];
                    iArr[3] = iArr[2];
                    i2 = i3;
                }
                int[] iArr2 = this.reps;
                iArr2[2] = iArr2[1];
            }
            int[] iArr3 = this.reps;
            iArr3[1] = iArr3[0];
            iArr3[0] = i2;
        }
        this.state.updateLongRep();
        return this.repLenDecoder.decode(i);
    }

    /* loaded from: classes2.dex */
    public class LiteralDecoder extends LZMACoder.LiteralCoder {
        public final LiteralSubdecoder[] subdecoders;

        public LiteralDecoder(int i, int i2) {
            super(i, i2);
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

        public void reset() {
            int i = 0;
            while (true) {
                LiteralSubdecoder[] literalSubdecoderArr = this.subdecoders;
                if (i >= literalSubdecoderArr.length) {
                    return;
                }
                literalSubdecoderArr[i].reset();
                i++;
            }
        }

        public void decode() {
            this.subdecoders[getSubcoderIndex(LZMADecoder.this.lz.getByte(0), LZMADecoder.this.lz.getPos())].decode();
        }

        /* loaded from: classes2.dex */
        public class LiteralSubdecoder extends LZMACoder.LiteralCoder.LiteralSubcoder {
            public LiteralSubdecoder() {
                super();
            }

            public void decode() {
                int i = 1;
                if (!LZMADecoder.this.state.isLiteral()) {
                    int i2 = LZMADecoder.this.lz.getByte(LZMADecoder.this.reps[0]);
                    int i3 = 256;
                    int i4 = 1;
                    do {
                        i2 <<= 1;
                        int i5 = i2 & i3;
                        int decodeBit = LZMADecoder.this.rc.decodeBit(this.probs, i3 + i5 + i4);
                        i4 = (i4 << 1) | decodeBit;
                        i3 &= (~i5) ^ (0 - decodeBit);
                    } while (i4 < 256);
                    i = i4;
                    LZMADecoder.this.lz.putByte((byte) i);
                    LZMADecoder.this.state.updateLiteral();
                }
                do {
                    i = LZMADecoder.this.rc.decodeBit(this.probs, i) | (i << 1);
                } while (i < 256);
                LZMADecoder.this.lz.putByte((byte) i);
                LZMADecoder.this.state.updateLiteral();
            }
        }
    }

    /* loaded from: classes2.dex */
    public class LengthDecoder extends LZMACoder.LengthCoder {
        public LengthDecoder() {
            super();
        }

        public int decode(int i) {
            if (LZMADecoder.this.rc.decodeBit(this.choice, 0) == 0) {
                return LZMADecoder.this.rc.decodeBitTree(this.low[i]) + 2;
            }
            if (LZMADecoder.this.rc.decodeBit(this.choice, 1) == 0) {
                return LZMADecoder.this.rc.decodeBitTree(this.mid[i]) + 2 + 8;
            }
            return LZMADecoder.this.rc.decodeBitTree(this.high) + 2 + 8 + 8;
        }
    }
}
