package com.google.zxing.aztec.encoder;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class State {
    public static final State INITIAL_STATE = new State(Token.EMPTY, 0, 0, 0);
    public final int binaryShiftByteCount;
    public final int bitCount;
    public final int mode;
    public final Token token;

    private State(Token token, int i, int i2, int i3) {
        this.token = token;
        this.mode = i;
        this.binaryShiftByteCount = i2;
        this.bitCount = i3;
    }

    public final State addBinaryShiftChar(int i) {
        int i2;
        Token token = this.token;
        int i3 = this.mode;
        int i4 = this.bitCount;
        if (i3 == 4 || i3 == 2) {
            int[] iArr = HighLevelEncoder.LATCH_TABLE[i3];
            i3 = 0;
            int i5 = iArr[0];
            int i6 = 65535 & i5;
            int i7 = i5 >> 16;
            token.getClass();
            i4 += i7;
            token = new SimpleToken(token, i6, i7);
        }
        int i8 = this.binaryShiftByteCount;
        if (i8 != 0 && i8 != 31) {
            if (i8 == 62) {
                i2 = 9;
            } else {
                i2 = 8;
            }
        } else {
            i2 = 18;
        }
        State state = new State(token, i3, i8 + 1, i4 + i2);
        if (state.binaryShiftByteCount == 2078) {
            return state.endBinaryShift(i + 1);
        }
        return state;
    }

    public final State endBinaryShift(int i) {
        int i2 = this.binaryShiftByteCount;
        if (i2 == 0) {
            return this;
        }
        Token token = this.token;
        token.getClass();
        return new State(new BinaryShiftToken(token, i - i2, i2), this.mode, 0, this.bitCount);
    }

    public final boolean isBetterThanOrEqualTo(State state) {
        int i;
        int i2 = this.bitCount + (HighLevelEncoder.LATCH_TABLE[this.mode][state.mode] >> 16);
        int i3 = state.binaryShiftByteCount;
        if (i3 > 0 && ((i = this.binaryShiftByteCount) == 0 || i > i3)) {
            i2 += 10;
        }
        if (i2 <= state.bitCount) {
            return true;
        }
        return false;
    }

    public final State latchAndAppend(int i, int i2) {
        int i3;
        int i4 = this.bitCount;
        Token token = this.token;
        int i5 = this.mode;
        if (i != i5) {
            int i6 = HighLevelEncoder.LATCH_TABLE[i5][i];
            int i7 = 65535 & i6;
            int i8 = i6 >> 16;
            token.getClass();
            i4 += i8;
            token = new SimpleToken(token, i7, i8);
        }
        if (i == 2) {
            i3 = 4;
        } else {
            i3 = 5;
        }
        token.getClass();
        return new State(new SimpleToken(token, i2, i3), i, 0, i4 + i3);
    }

    public final State shiftAndAppend(int i, int i2) {
        int i3;
        int i4 = this.mode;
        if (i4 == 2) {
            i3 = 4;
        } else {
            i3 = 5;
        }
        int i5 = HighLevelEncoder.SHIFT_TABLE[i4][i];
        Token token = this.token;
        token.getClass();
        return new State(new SimpleToken(new SimpleToken(token, i5, i3), i2, 5), i4, 0, this.bitCount + i3 + 5);
    }

    public final String toString() {
        return String.format("%s bits=%d bytes=%d", HighLevelEncoder.MODE_NAMES[this.mode], Integer.valueOf(this.bitCount), Integer.valueOf(this.binaryShiftByteCount));
    }
}
