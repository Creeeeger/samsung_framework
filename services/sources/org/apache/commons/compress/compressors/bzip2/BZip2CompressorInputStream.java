package org.apache.commons.compress.compressors.bzip2;

import android.hardware.broadcastradio.V2_0.AmFmBandRange$$ExternalSyntheticOutline0;
import com.android.internal.util.FrameworkStatsLog;
import com.android.internal.util.jobs.ArrayUtils$$ExternalSyntheticOutline0;
import com.android.internal.util.jobs.XmlUtils$$ExternalSyntheticOutline0;
import com.android.server.BinaryTransparencyService$$ExternalSyntheticOutline0;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Array;
import java.nio.ByteOrder;
import java.util.Arrays;
import org.apache.commons.compress.compressors.CompressorInputStream;
import org.apache.commons.compress.utils.BitInputStream;
import org.apache.commons.compress.utils.CloseShieldFilterInputStream;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes2.dex */
public final class BZip2CompressorInputStream extends CompressorInputStream {
    public BitInputStream bin;
    public boolean blockRandomised;
    public int blockSize100k;
    public int computedCombinedCRC;
    public final CRC crc;
    public int currentState;
    public Data data;
    public int last;
    public int nInUse;
    public int origPtr;
    public int storedBlockCRC;
    public int storedCombinedCRC;
    public int su_ch2;
    public int su_chPrev;
    public int su_count;
    public int su_i2;
    public int su_j2;
    public int su_rNToGo;
    public int su_rTPos;
    public int su_tPos;
    public char su_z;

    /* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
    public final class Data {
        public final int[][] base;
        public final int[] cftab;
        public final char[] getAndMoveToFrontDecode_yy;
        public final int[][] limit;
        public final byte[] ll8;
        public final int[] minLens;
        public final int[][] perm;
        public final byte[] recvDecodingTables_pos;
        public final char[][] temp_charArray2d;
        public int[] tt;
        public final boolean[] inUse = new boolean[256];
        public final byte[] seqToUnseq = new byte[256];
        public final byte[] selector = new byte[18002];
        public final byte[] selectorMtf = new byte[18002];
        public final int[] unzftab = new int[256];

        public Data(int i) {
            Class cls = Integer.TYPE;
            this.limit = (int[][]) Array.newInstance((Class<?>) cls, 6, 258);
            this.base = (int[][]) Array.newInstance((Class<?>) cls, 6, 258);
            this.perm = (int[][]) Array.newInstance((Class<?>) cls, 6, 258);
            this.minLens = new int[6];
            this.cftab = new int[FrameworkStatsLog.HDMI_CEC_MESSAGE_REPORTED__USER_CONTROL_PRESSED_COMMAND__UP];
            this.getAndMoveToFrontDecode_yy = new char[256];
            this.temp_charArray2d = (char[][]) Array.newInstance((Class<?>) Character.TYPE, 6, 258);
            this.recvDecodingTables_pos = new byte[6];
            this.ll8 = new byte[i * 100000];
        }
    }

    public BZip2CompressorInputStream(InputStream inputStream) {
        CRC crc = new CRC();
        crc.globalCrc = -1;
        this.crc = crc;
        this.currentState = 1;
        this.bin = new BitInputStream(inputStream == System.in ? new CloseShieldFilterInputStream(inputStream) : inputStream, ByteOrder.BIG_ENDIAN);
        BitInputStream bitInputStream = this.bin;
        if (bitInputStream == null) {
            throw new IOException("No InputStream");
        }
        int readBits = (int) bitInputStream.readBits(8);
        int readBits2 = (int) this.bin.readBits(8);
        int readBits3 = (int) this.bin.readBits(8);
        if (readBits != 66 || readBits2 != 90 || readBits3 != 104) {
            throw new IOException("Stream is not in the BZip2 format");
        }
        int readBits4 = (int) this.bin.readBits(8);
        if (readBits4 < 49 || readBits4 > 57) {
            throw new IOException("BZip2 block size is invalid");
        }
        this.blockSize100k = readBits4 - 48;
        this.computedCombinedCRC = 0;
        initBlock();
    }

    public static int bsR(BitInputStream bitInputStream, int i) {
        long readBits = bitInputStream.readBits(i);
        if (readBits >= 0) {
            return (int) readBits;
        }
        throw new IOException("unexpected end of stream");
    }

    public static void checkBounds(int i, int i2, String str) {
        if (i < 0) {
            throw new IOException(XmlUtils$$ExternalSyntheticOutline0.m("Corrupted input, ", str, " value negative"));
        }
        if (i >= i2) {
            throw new IOException(XmlUtils$$ExternalSyntheticOutline0.m("Corrupted input, ", str, " value too big"));
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        BitInputStream bitInputStream = this.bin;
        if (bitInputStream != null) {
            try {
                bitInputStream.close();
            } finally {
                this.data = null;
                this.bin = null;
            }
        }
    }

    public final void endBlock() {
        int i = ~this.crc.globalCrc;
        int i2 = this.storedBlockCRC;
        if (i2 == i) {
            int i3 = this.computedCombinedCRC;
            this.computedCombinedCRC = i ^ ((i3 >>> 31) | (i3 << 1));
        } else {
            int i4 = this.storedCombinedCRC;
            this.computedCombinedCRC = ((i4 >>> 31) | (i4 << 1)) ^ i2;
            throw new IOException("BZip2 CRC error");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v13, types: [int] */
    /* JADX WARN: Type inference failed for: r18v11, types: [int] */
    public final void initBlock() {
        byte[] bArr;
        byte[] bArr2;
        int[] iArr;
        char[] cArr;
        int[] iArr2;
        Data data;
        byte[] bArr3;
        int i;
        int i2;
        char c;
        int i3;
        String str;
        int i4;
        BitInputStream bitInputStream = this.bin;
        char bsR = (char) bsR(bitInputStream, 8);
        char bsR2 = (char) bsR(bitInputStream, 8);
        char bsR3 = (char) bsR(bitInputStream, 8);
        char bsR4 = (char) bsR(bitInputStream, 8);
        char bsR5 = (char) bsR(bitInputStream, 8);
        char bsR6 = (char) bsR(bitInputStream, 8);
        char c2 = 0;
        if (bsR == 23 && bsR2 == 'r' && bsR3 == 'E' && bsR4 == '8' && bsR5 == 'P' && bsR6 == 144) {
            int bsR7 = bsR(this.bin, 32);
            this.storedCombinedCRC = bsR7;
            this.currentState = 0;
            this.data = null;
            if (bsR7 != this.computedCombinedCRC) {
                throw new IOException("BZip2 CRC error");
            }
            return;
        }
        if (bsR != '1' || bsR2 != 'A' || bsR3 != 'Y' || bsR4 != '&' || bsR5 != 'S' || bsR6 != 'Y') {
            this.currentState = 0;
            throw new IOException("bad block header");
        }
        this.storedBlockCRC = bsR(bitInputStream, 32);
        this.blockRandomised = bsR(bitInputStream, 1) == 1;
        if (this.data == null) {
            this.data = new Data(this.blockSize100k);
        }
        BitInputStream bitInputStream2 = this.bin;
        this.origPtr = bsR(bitInputStream2, 24);
        BitInputStream bitInputStream3 = this.bin;
        Data data2 = this.data;
        boolean[] zArr = data2.inUse;
        int i5 = 0;
        for (int i6 = 0; i6 < 16; i6++) {
            if (bsR(bitInputStream3, 1) != 0) {
                i5 |= 1 << i6;
            }
        }
        Arrays.fill(zArr, false);
        for (int i7 = 0; i7 < 16; i7++) {
            if (((1 << i7) & i5) != 0) {
                int i8 = i7 << 4;
                for (int i9 = 0; i9 < 16; i9++) {
                    if (bsR(bitInputStream3, 1) != 0) {
                        zArr[i8 + i9] = true;
                    }
                }
            }
        }
        Data data3 = this.data;
        boolean[] zArr2 = data3.inUse;
        int i10 = 0;
        for (int i11 = 0; i11 < 256; i11++) {
            if (zArr2[i11]) {
                data3.seqToUnseq[i10] = (byte) i11;
                i10++;
            }
        }
        this.nInUse = i10;
        int i12 = i10 + 2;
        int bsR8 = bsR(bitInputStream3, 3);
        int bsR9 = bsR(bitInputStream3, 15);
        checkBounds(i12, 259, "alphaSize");
        checkBounds(bsR8, 7, "nGroups");
        checkBounds(bsR9, 18003, "nSelectors");
        int i13 = 0;
        while (true) {
            bArr = data2.selectorMtf;
            if (i13 >= bsR9) {
                break;
            }
            int i14 = 0;
            while (bsR(bitInputStream3, 1) != 0) {
                i14++;
            }
            bArr[i13] = (byte) i14;
            i13++;
        }
        int i15 = bsR8;
        while (true) {
            i15--;
            bArr2 = data2.recvDecodingTables_pos;
            if (i15 < 0) {
                break;
            } else {
                bArr2[i15] = (byte) i15;
            }
        }
        for (int i16 = 0; i16 < bsR9; i16++) {
            int i17 = bArr[i16] & 255;
            checkBounds(i17, 6, "selectorMtf");
            byte b = bArr2[i17];
            while (i17 > 0) {
                bArr2[i17] = bArr2[i17 - 1];
                i17--;
            }
            bArr2[0] = b;
            data2.selector[i16] = b;
        }
        for (int i18 = 0; i18 < bsR8; i18++) {
            int bsR10 = bsR(bitInputStream3, 5);
            char[] cArr2 = data2.temp_charArray2d[i18];
            for (int i19 = 0; i19 < i12; i19++) {
                while (bsR(bitInputStream3, 1) != 0) {
                    bsR10 += bsR(bitInputStream3, 1) != 0 ? -1 : 1;
                }
                cArr2[i19] = (char) bsR10;
            }
        }
        Data data4 = this.data;
        char[][] cArr3 = data4.temp_charArray2d;
        int i20 = 0;
        while (i20 < bsR8) {
            char[] cArr4 = cArr3[i20];
            char c3 = c2;
            int i21 = i12;
            char c4 = ' ';
            while (true) {
                i21--;
                if (i21 < 0) {
                    break;
                }
                char c5 = cArr4[i21];
                if (c5 > c3) {
                    c3 = c5;
                }
                if (c5 < c4) {
                    c4 = c5;
                }
            }
            int[] iArr3 = data4.limit[i20];
            int[] iArr4 = data4.base[i20];
            int[] iArr5 = data4.perm[i20];
            char[] cArr5 = cArr3[i20];
            char c6 = c2;
            int i22 = c4;
            while (i22 <= c3) {
                for (int i23 = c2; i23 < i12; i23++) {
                    if (cArr5[i23] == i22) {
                        iArr5[c6] = i23;
                        c6++;
                    }
                }
                i22++;
                c2 = 0;
            }
            int i24 = 23;
            while (true) {
                i24--;
                if (i24 <= 0) {
                    break;
                }
                iArr4[i24] = 0;
                iArr3[i24] = 0;
            }
            for (int i25 = 0; i25 < i12; i25++) {
                char c7 = cArr5[i25];
                checkBounds(c7, 258, "length");
                int i26 = c7 + 1;
                iArr4[i26] = iArr4[i26] + 1;
            }
            int i27 = iArr4[0];
            for (int i28 = 1; i28 < 23; i28++) {
                i27 += iArr4[i28];
                iArr4[i28] = i27;
            }
            int i29 = iArr4[c4];
            char c8 = c4;
            int i30 = 0;
            while (c8 <= c3) {
                ?? r18 = c8 + 1;
                int i31 = iArr4[r18];
                int i32 = (i31 - i29) + i30;
                iArr3[c8] = i32 - 1;
                i30 = i32 << 1;
                c8 = r18;
                i29 = i31;
            }
            int i33 = 1;
            int i34 = c4 + 1;
            while (i34 <= c3) {
                iArr4[i34] = ((iArr3[i34 - 1] + i33) << i33) - iArr4[i34];
                i34++;
                i33 = 1;
            }
            data4.minLens[i20] = c4;
            i20++;
            c2 = 0;
        }
        Data data5 = this.data;
        byte[] bArr4 = data5.ll8;
        int i35 = this.blockSize100k * 100000;
        int i36 = 256;
        while (true) {
            i36--;
            iArr = data5.unzftab;
            cArr = data5.getAndMoveToFrontDecode_yy;
            if (i36 < 0) {
                break;
            }
            cArr[i36] = (char) i36;
            iArr[i36] = 0;
        }
        int i37 = this.nInUse + 1;
        Data data6 = this.data;
        int i38 = data6.selector[0] & 255;
        checkBounds(i38, 6, "zt");
        int i39 = data6.minLens[i38];
        String str2 = "zn";
        checkBounds(i39, 258, "zn");
        int bsR11 = bsR(this.bin, i39);
        for (int[] iArr6 = data6.limit[i38]; bsR11 > iArr6[i39]; iArr6 = iArr6) {
            i39++;
            checkBounds(i39, 258, "zn");
            bsR11 = bsR(this.bin, 1) | (bsR11 << 1);
        }
        int i40 = bsR11 - data6.base[i38][i39];
        checkBounds(i40, 258, "zvec");
        int i41 = data6.perm[i38][i40];
        byte[] bArr5 = data5.selector;
        int i42 = bArr5[0] & 255;
        checkBounds(i42, 6, "zt");
        int[][] iArr7 = data5.base;
        int[] iArr8 = iArr7[i42];
        int[][] iArr9 = data5.limit;
        int[] iArr10 = iArr9[i42];
        int[] iArr11 = iArr8;
        int[][] iArr12 = data5.perm;
        int[] iArr13 = iArr12[i42];
        int[] iArr14 = data5.minLens;
        String str3 = "zvec";
        int[] iArr15 = iArr13;
        int i43 = -1;
        int i44 = 0;
        int i45 = 49;
        int i46 = iArr14[i42];
        int i47 = i41;
        while (i47 != i37) {
            int i48 = i37;
            String str4 = "groupNo";
            BitInputStream bitInputStream4 = bitInputStream2;
            String str5 = str2;
            byte[] bArr6 = data5.seqToUnseq;
            if (i47 != 0) {
                data = data5;
                if (i47 == 1) {
                    iArr2 = iArr14;
                } else {
                    i43++;
                    if (i43 >= i35) {
                        throw new IOException(ArrayUtils$$ExternalSyntheticOutline0.m(i43, i35, "block overrun in MTF, ", " exceeds "));
                    }
                    int i49 = i35;
                    checkBounds(i47, FrameworkStatsLog.HDMI_CEC_MESSAGE_REPORTED__USER_CONTROL_PRESSED_COMMAND__UP, "nextSym");
                    int i50 = i47 - 1;
                    char c9 = cArr[i50];
                    int[] iArr16 = iArr14;
                    checkBounds(c9, 256, "yy");
                    byte b2 = bArr6[c9];
                    int i51 = b2 & 255;
                    iArr[i51] = iArr[i51] + 1;
                    bArr4[i43] = b2;
                    if (i47 <= 16) {
                        while (i50 > 0) {
                            int i52 = i50 - 1;
                            cArr[i50] = cArr[i52];
                            i50 = i52;
                        }
                        c = 0;
                    } else {
                        c = 0;
                        System.arraycopy(cArr, 0, cArr, 1, i50);
                    }
                    cArr[c] = c9;
                    if (i45 == 0) {
                        int i53 = i44 + 1;
                        checkBounds(i53, 18002, "groupNo");
                        int i54 = bArr5[i53] & 255;
                        checkBounds(i54, 6, "zt");
                        int[] iArr17 = iArr7[i54];
                        int[] iArr18 = iArr9[i54];
                        int[] iArr19 = iArr12[i54];
                        i3 = iArr16[i54];
                        i44 = i53;
                        iArr11 = iArr17;
                        iArr10 = iArr18;
                        iArr15 = iArr19;
                        str = str5;
                        i4 = 258;
                        i45 = 49;
                    } else {
                        i45--;
                        i3 = i46;
                        str = str5;
                        i4 = 258;
                    }
                    checkBounds(i3, i4, str);
                    int bsR12 = bsR(bitInputStream4, i3);
                    int i55 = i3;
                    while (bsR12 > iArr10[i55]) {
                        i55++;
                        checkBounds(i55, i4, str);
                        bsR12 = (bsR12 << 1) | bsR(bitInputStream4, 1);
                    }
                    int i56 = bsR12 - iArr11[i55];
                    checkBounds(i56, i4, str3);
                    i47 = iArr15[i56];
                    i46 = i3;
                    str2 = str;
                    bitInputStream2 = bitInputStream4;
                    i37 = i48;
                    data5 = data;
                    i35 = i49;
                    iArr14 = iArr16;
                }
            } else {
                iArr2 = iArr14;
                data = data5;
            }
            int i57 = i35;
            String str6 = str3;
            int i58 = i47;
            int i59 = -1;
            int[] iArr20 = iArr15;
            int i60 = i44;
            int[] iArr21 = iArr11;
            int[] iArr22 = iArr10;
            int i61 = i46;
            int i62 = 1;
            while (true) {
                if (i58 != 0) {
                    bArr3 = bArr4;
                    if (i58 != 1) {
                        break;
                    } else {
                        i59 += i62 << 1;
                    }
                } else {
                    i59 += i62;
                    bArr3 = bArr4;
                }
                if (i45 == 0) {
                    int i63 = i60 + 1;
                    checkBounds(i63, 18002, str4);
                    int i64 = bArr5[i63] & 255;
                    checkBounds(i64, 6, "zt");
                    iArr21 = iArr7[i64];
                    iArr22 = iArr9[i64];
                    iArr20 = iArr12[i64];
                    i = iArr2[i64];
                    i60 = i63;
                    i2 = 258;
                    i45 = 49;
                } else {
                    i45--;
                    i = i61;
                    i2 = 258;
                }
                checkBounds(i, i2, str5);
                int i65 = i;
                int bsR13 = bsR(bitInputStream4, i);
                int i66 = i65;
                while (bsR13 > iArr22[i66]) {
                    int i67 = i66 + 1;
                    checkBounds(i67, 258, str5);
                    bsR13 = (bsR13 << 1) | bsR(bitInputStream4, 1);
                    i66 = i67;
                    str4 = str4;
                }
                int i68 = bsR13 - iArr21[i66];
                checkBounds(i68, 258, str6);
                i58 = iArr20[i68];
                i62 <<= 1;
                bArr4 = bArr3;
                i61 = i65;
            }
            int i69 = i58;
            char c10 = cArr[0];
            checkBounds(c10, 256, "yy");
            byte b3 = bArr6[c10];
            int i70 = b3 & 255;
            iArr[i70] = i59 + 1 + iArr[i70];
            int i71 = i43 + 1;
            int i72 = i71 + i59;
            Arrays.fill(bArr3, i71, i72 + 1, b3);
            if (i72 >= i57) {
                throw new IOException(ArrayUtils$$ExternalSyntheticOutline0.m(i72, i57, "block overrun while expanding RLE in MTF, ", " exceeds "));
            }
            i43 = i72;
            str2 = str5;
            i46 = i61;
            iArr10 = iArr22;
            iArr11 = iArr21;
            i44 = i60;
            iArr15 = iArr20;
            str3 = str6;
            i35 = i57;
            bArr4 = bArr3;
            bitInputStream2 = bitInputStream4;
            data5 = data;
            iArr14 = iArr2;
            i47 = i69;
            i37 = i48;
        }
        this.last = i43;
        this.crc.globalCrc = -1;
        this.currentState = 1;
    }

    @Override // java.io.InputStream
    public final int read() {
        if (this.bin != null) {
            return read0();
        }
        throw new IOException("stream closed");
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        if (i < 0) {
            throw new IndexOutOfBoundsException(BinaryTransparencyService$$ExternalSyntheticOutline0.m(i, "offs(", ") < 0."));
        }
        if (i2 < 0) {
            throw new IndexOutOfBoundsException(BinaryTransparencyService$$ExternalSyntheticOutline0.m(i2, "len(", ") < 0."));
        }
        int i3 = i + i2;
        if (i3 > bArr.length) {
            throw new IndexOutOfBoundsException(AmFmBandRange$$ExternalSyntheticOutline0.m(bArr.length, ArrayUtils$$ExternalSyntheticOutline0.m(i, i2, "offs(", ") + len(", ") > dest.length("), ")."));
        }
        if (this.bin == null) {
            throw new IOException("stream closed");
        }
        if (i2 == 0) {
            return 0;
        }
        int i4 = i;
        while (i4 < i3) {
            int read0 = read0();
            if (read0 < 0) {
                break;
            }
            bArr[i4] = (byte) read0;
            i4++;
        }
        if (i4 == i) {
            return -1;
        }
        return i4 - i;
    }

    public final int read0() {
        switch (this.currentState) {
            case 0:
                return -1;
            case 1:
                return setupBlock();
            case 2:
                throw new IllegalStateException();
            case 3:
                if (this.su_ch2 != this.su_chPrev) {
                    this.currentState = 2;
                    this.su_count = 1;
                    return setupRandPartA();
                }
                int i = this.su_count + 1;
                this.su_count = i;
                if (i < 4) {
                    this.currentState = 2;
                    return setupRandPartA();
                }
                Data data = this.data;
                byte[] bArr = data.ll8;
                int i2 = this.su_tPos;
                this.su_z = (char) (bArr[i2] & 255);
                checkBounds(i2, data.tt.length, "su_tPos");
                this.su_tPos = this.data.tt[this.su_tPos];
                int i3 = this.su_rNToGo;
                if (i3 == 0) {
                    int i4 = this.su_rTPos;
                    this.su_rNToGo = Rand.RNUMS[i4] - 1;
                    int i5 = i4 + 1;
                    this.su_rTPos = i5;
                    if (i5 == 512) {
                        this.su_rTPos = 0;
                    }
                } else {
                    this.su_rNToGo = i3 - 1;
                }
                this.su_j2 = 0;
                this.currentState = 4;
                if (this.su_rNToGo == 1) {
                    this.su_z = (char) (this.su_z ^ 1);
                }
                return setupRandPartC();
            case 4:
                return setupRandPartC();
            case 5:
                throw new IllegalStateException();
            case 6:
                if (this.su_ch2 != this.su_chPrev) {
                    this.su_count = 1;
                    return setupNoRandPartA();
                }
                int i6 = this.su_count + 1;
                this.su_count = i6;
                if (i6 < 4) {
                    return setupNoRandPartA();
                }
                checkBounds(this.su_tPos, this.data.ll8.length, "su_tPos");
                Data data2 = this.data;
                byte[] bArr2 = data2.ll8;
                int i7 = this.su_tPos;
                this.su_z = (char) (bArr2[i7] & 255);
                this.su_tPos = data2.tt[i7];
                this.su_j2 = 0;
                return setupNoRandPartC();
            case 7:
                return setupNoRandPartC();
            default:
                throw new IllegalStateException();
        }
    }

    public final int setupBlock() {
        Data data;
        if (this.currentState == 0 || (data = this.data) == null) {
            return -1;
        }
        int[] iArr = data.cftab;
        int i = this.last + 1;
        int[] iArr2 = data.tt;
        if (iArr2 == null || iArr2.length < i) {
            iArr2 = new int[i];
            data.tt = iArr2;
        }
        byte[] bArr = data.ll8;
        iArr[0] = 0;
        System.arraycopy(data.unzftab, 0, iArr, 1, 256);
        int i2 = iArr[0];
        for (int i3 = 1; i3 <= 256; i3++) {
            i2 += iArr[i3];
            iArr[i3] = i2;
        }
        int i4 = this.last;
        for (int i5 = 0; i5 <= i4; i5++) {
            int i6 = bArr[i5] & 255;
            int i7 = iArr[i6];
            iArr[i6] = i7 + 1;
            checkBounds(i7, i, "tt index");
            iArr2[i7] = i5;
        }
        int i8 = this.origPtr;
        if (i8 < 0 || i8 >= iArr2.length) {
            throw new IOException("stream corrupted");
        }
        this.su_tPos = iArr2[i8];
        this.su_count = 0;
        this.su_i2 = 0;
        this.su_ch2 = 256;
        if (!this.blockRandomised) {
            return setupNoRandPartA();
        }
        this.su_rNToGo = 0;
        this.su_rTPos = 0;
        return setupRandPartA();
    }

    public final int setupNoRandPartA() {
        if (this.su_i2 > this.last) {
            this.currentState = 5;
            endBlock();
            initBlock();
            return setupBlock();
        }
        this.su_chPrev = this.su_ch2;
        Data data = this.data;
        byte[] bArr = data.ll8;
        int i = this.su_tPos;
        int i2 = bArr[i] & 255;
        this.su_ch2 = i2;
        checkBounds(i, data.tt.length, "su_tPos");
        this.su_tPos = this.data.tt[this.su_tPos];
        this.su_i2++;
        this.currentState = 6;
        this.crc.updateCRC(i2);
        return i2;
    }

    public final int setupNoRandPartC() {
        if (this.su_j2 >= this.su_z) {
            this.su_i2++;
            this.su_count = 0;
            return setupNoRandPartA();
        }
        int i = this.su_ch2;
        this.crc.updateCRC(i);
        this.su_j2++;
        this.currentState = 7;
        return i;
    }

    public final int setupRandPartA() {
        if (this.su_i2 > this.last) {
            endBlock();
            initBlock();
            return setupBlock();
        }
        this.su_chPrev = this.su_ch2;
        Data data = this.data;
        byte[] bArr = data.ll8;
        int i = this.su_tPos;
        int i2 = bArr[i] & 255;
        checkBounds(i, data.tt.length, "su_tPos");
        this.su_tPos = this.data.tt[this.su_tPos];
        int i3 = this.su_rNToGo;
        if (i3 == 0) {
            int i4 = this.su_rTPos;
            this.su_rNToGo = Rand.RNUMS[i4] - 1;
            int i5 = i4 + 1;
            this.su_rTPos = i5;
            if (i5 == 512) {
                this.su_rTPos = 0;
            }
        } else {
            this.su_rNToGo = i3 - 1;
        }
        int i6 = i2 ^ (this.su_rNToGo == 1 ? 1 : 0);
        this.su_ch2 = i6;
        this.su_i2++;
        this.currentState = 3;
        this.crc.updateCRC(i6);
        return i6;
    }

    public final int setupRandPartC() {
        if (this.su_j2 < this.su_z) {
            this.crc.updateCRC(this.su_ch2);
            this.su_j2++;
            return this.su_ch2;
        }
        this.currentState = 2;
        this.su_i2++;
        this.su_count = 0;
        return setupRandPartA();
    }
}
