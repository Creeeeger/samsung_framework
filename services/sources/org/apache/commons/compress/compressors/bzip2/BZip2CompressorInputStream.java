package org.apache.commons.compress.compressors.bzip2;

import com.android.internal.util.FrameworkStatsLog;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Array;
import java.nio.ByteOrder;
import java.util.Arrays;
import org.apache.commons.compress.compressors.CompressorInputStream;
import org.apache.commons.compress.utils.BitInputStream;
import org.apache.commons.compress.utils.CloseShieldFilterInputStream;

/* loaded from: classes2.dex */
public class BZip2CompressorInputStream extends CompressorInputStream {
    public BitInputStream bin;
    public boolean blockRandomised;
    public int blockSize100k;
    public int computedBlockCRC;
    public int computedCombinedCRC;
    public final CRC crc;
    public int currentState;
    public Data data;
    public final boolean decompressConcatenated;
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

    public BZip2CompressorInputStream(InputStream inputStream) {
        this(inputStream, false);
    }

    public BZip2CompressorInputStream(InputStream inputStream, boolean z) {
        this.crc = new CRC();
        this.currentState = 1;
        this.bin = new BitInputStream(inputStream == System.in ? new CloseShieldFilterInputStream(inputStream) : inputStream, ByteOrder.BIG_ENDIAN);
        this.decompressConcatenated = z;
        init(true);
        initBlock();
    }

    @Override // java.io.InputStream
    public int read() {
        if (this.bin != null) {
            int read0 = read0();
            count(read0 < 0 ? -1 : 1);
            return read0;
        }
        throw new IOException("stream closed");
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        if (i < 0) {
            throw new IndexOutOfBoundsException("offs(" + i + ") < 0.");
        }
        if (i2 < 0) {
            throw new IndexOutOfBoundsException("len(" + i2 + ") < 0.");
        }
        int i3 = i + i2;
        if (i3 > bArr.length) {
            throw new IndexOutOfBoundsException("offs(" + i + ") + len(" + i2 + ") > dest.length(" + bArr.length + ").");
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
            count(1);
            i4++;
        }
        if (i4 == i) {
            return -1;
        }
        return i4 - i;
    }

    public final void makeMaps() {
        Data data = this.data;
        boolean[] zArr = data.inUse;
        byte[] bArr = data.seqToUnseq;
        int i = 0;
        for (int i2 = 0; i2 < 256; i2++) {
            if (zArr[i2]) {
                bArr[i] = (byte) i2;
                i++;
            }
        }
        this.nInUse = i;
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
                return setupRandPartB();
            case 4:
                return setupRandPartC();
            case 5:
                throw new IllegalStateException();
            case 6:
                return setupNoRandPartB();
            case 7:
                return setupNoRandPartC();
            default:
                throw new IllegalStateException();
        }
    }

    public final int readNextByte(BitInputStream bitInputStream) {
        return (int) bitInputStream.readBits(8);
    }

    public final boolean init(boolean z) {
        BitInputStream bitInputStream = this.bin;
        if (bitInputStream == null) {
            throw new IOException("No InputStream");
        }
        if (!z) {
            bitInputStream.clearBitCache();
        }
        int readNextByte = readNextByte(this.bin);
        if (readNextByte == -1 && !z) {
            return false;
        }
        int readNextByte2 = readNextByte(this.bin);
        int readNextByte3 = readNextByte(this.bin);
        if (readNextByte != 66 || readNextByte2 != 90 || readNextByte3 != 104) {
            throw new IOException(z ? "Stream is not in the BZip2 format" : "Garbage after a valid BZip2 stream");
        }
        int readNextByte4 = readNextByte(this.bin);
        if (readNextByte4 < 49 || readNextByte4 > 57) {
            throw new IOException("BZip2 block size is invalid");
        }
        this.blockSize100k = readNextByte4 - 48;
        this.computedCombinedCRC = 0;
        return true;
    }

    public final void initBlock() {
        BitInputStream bitInputStream = this.bin;
        do {
            char bsGetUByte = bsGetUByte(bitInputStream);
            char bsGetUByte2 = bsGetUByte(bitInputStream);
            char bsGetUByte3 = bsGetUByte(bitInputStream);
            char bsGetUByte4 = bsGetUByte(bitInputStream);
            char bsGetUByte5 = bsGetUByte(bitInputStream);
            char bsGetUByte6 = bsGetUByte(bitInputStream);
            if (bsGetUByte != 23 || bsGetUByte2 != 'r' || bsGetUByte3 != 'E' || bsGetUByte4 != '8' || bsGetUByte5 != 'P' || bsGetUByte6 != 144) {
                if (bsGetUByte != '1' || bsGetUByte2 != 'A' || bsGetUByte3 != 'Y' || bsGetUByte4 != '&' || bsGetUByte5 != 'S' || bsGetUByte6 != 'Y') {
                    this.currentState = 0;
                    throw new IOException("bad block header");
                }
                this.storedBlockCRC = bsGetInt(bitInputStream);
                this.blockRandomised = bsR(bitInputStream, 1) == 1;
                if (this.data == null) {
                    this.data = new Data(this.blockSize100k);
                }
                getAndMoveToFrontDecode();
                this.crc.initialiseCRC();
                this.currentState = 1;
                return;
            }
        } while (!complete());
    }

    public final void endBlock() {
        int finalCRC = this.crc.getFinalCRC();
        this.computedBlockCRC = finalCRC;
        int i = this.storedBlockCRC;
        if (i != finalCRC) {
            int i2 = this.storedCombinedCRC;
            this.computedCombinedCRC = ((i2 >>> 31) | (i2 << 1)) ^ i;
            throw new IOException("BZip2 CRC error");
        }
        int i3 = this.computedCombinedCRC;
        this.computedCombinedCRC = finalCRC ^ ((i3 >>> 31) | (i3 << 1));
    }

    public final boolean complete() {
        int bsGetInt = bsGetInt(this.bin);
        this.storedCombinedCRC = bsGetInt;
        this.currentState = 0;
        this.data = null;
        if (bsGetInt == this.computedCombinedCRC) {
            return (this.decompressConcatenated && init(false)) ? false : true;
        }
        throw new IOException("BZip2 CRC error");
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
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

    public static int bsR(BitInputStream bitInputStream, int i) {
        long readBits = bitInputStream.readBits(i);
        if (readBits >= 0) {
            return (int) readBits;
        }
        throw new IOException("unexpected end of stream");
    }

    public static boolean bsGetBit(BitInputStream bitInputStream) {
        return bsR(bitInputStream, 1) != 0;
    }

    public static char bsGetUByte(BitInputStream bitInputStream) {
        return (char) bsR(bitInputStream, 8);
    }

    public static int bsGetInt(BitInputStream bitInputStream) {
        return bsR(bitInputStream, 32);
    }

    public static void checkBounds(int i, int i2, String str) {
        if (i < 0) {
            throw new IOException("Corrupted input, " + str + " value negative");
        }
        if (i < i2) {
            return;
        }
        throw new IOException("Corrupted input, " + str + " value too big");
    }

    public static void hbCreateDecodeTables(int[] iArr, int[] iArr2, int[] iArr3, char[] cArr, int i, int i2, int i3) {
        int i4 = 0;
        int i5 = 0;
        for (int i6 = i; i6 <= i2; i6++) {
            for (int i7 = 0; i7 < i3; i7++) {
                if (cArr[i7] == i6) {
                    iArr3[i5] = i7;
                    i5++;
                }
            }
        }
        int i8 = 23;
        while (true) {
            i8--;
            if (i8 <= 0) {
                break;
            }
            iArr2[i8] = 0;
            iArr[i8] = 0;
        }
        for (int i9 = 0; i9 < i3; i9++) {
            char c = cArr[i9];
            checkBounds(c, 258, "length");
            int i10 = c + 1;
            iArr2[i10] = iArr2[i10] + 1;
        }
        int i11 = iArr2[0];
        for (int i12 = 1; i12 < 23; i12++) {
            i11 += iArr2[i12];
            iArr2[i12] = i11;
        }
        int i13 = iArr2[i];
        int i14 = i;
        while (i14 <= i2) {
            int i15 = i14 + 1;
            int i16 = iArr2[i15];
            int i17 = i4 + (i16 - i13);
            iArr[i14] = i17 - 1;
            i4 = i17 << 1;
            i14 = i15;
            i13 = i16;
        }
        for (int i18 = i + 1; i18 <= i2; i18++) {
            iArr2[i18] = ((iArr[i18 - 1] + 1) << 1) - iArr2[i18];
        }
    }

    public final void recvDecodingTables() {
        BitInputStream bitInputStream = this.bin;
        Data data = this.data;
        boolean[] zArr = data.inUse;
        byte[] bArr = data.recvDecodingTables_pos;
        byte[] bArr2 = data.selector;
        byte[] bArr3 = data.selectorMtf;
        int i = 0;
        for (int i2 = 0; i2 < 16; i2++) {
            if (bsGetBit(bitInputStream)) {
                i |= 1 << i2;
            }
        }
        Arrays.fill(zArr, false);
        for (int i3 = 0; i3 < 16; i3++) {
            if (((1 << i3) & i) != 0) {
                int i4 = i3 << 4;
                for (int i5 = 0; i5 < 16; i5++) {
                    if (bsGetBit(bitInputStream)) {
                        zArr[i4 + i5] = true;
                    }
                }
            }
        }
        makeMaps();
        int i6 = this.nInUse + 2;
        int bsR = bsR(bitInputStream, 3);
        int bsR2 = bsR(bitInputStream, 15);
        checkBounds(i6, 259, "alphaSize");
        checkBounds(bsR, 7, "nGroups");
        checkBounds(bsR2, 18003, "nSelectors");
        for (int i7 = 0; i7 < bsR2; i7++) {
            int i8 = 0;
            while (bsGetBit(bitInputStream)) {
                i8++;
            }
            bArr3[i7] = (byte) i8;
        }
        int i9 = bsR;
        while (true) {
            i9--;
            if (i9 < 0) {
                break;
            } else {
                bArr[i9] = (byte) i9;
            }
        }
        for (int i10 = 0; i10 < bsR2; i10++) {
            int i11 = bArr3[i10] & 255;
            checkBounds(i11, 6, "selectorMtf");
            byte b = bArr[i11];
            while (i11 > 0) {
                bArr[i11] = bArr[i11 - 1];
                i11--;
            }
            bArr[0] = b;
            bArr2[i10] = b;
        }
        char[][] cArr = data.temp_charArray2d;
        for (int i12 = 0; i12 < bsR; i12++) {
            int bsR3 = bsR(bitInputStream, 5);
            char[] cArr2 = cArr[i12];
            for (int i13 = 0; i13 < i6; i13++) {
                while (bsGetBit(bitInputStream)) {
                    bsR3 += bsGetBit(bitInputStream) ? -1 : 1;
                }
                cArr2[i13] = (char) bsR3;
            }
        }
        createHuffmanDecodingTables(i6, bsR);
    }

    public final void createHuffmanDecodingTables(int i, int i2) {
        Data data = this.data;
        char[][] cArr = data.temp_charArray2d;
        int[] iArr = data.minLens;
        int[][] iArr2 = data.limit;
        int[][] iArr3 = data.base;
        int[][] iArr4 = data.perm;
        for (int i3 = 0; i3 < i2; i3++) {
            char[] cArr2 = cArr[i3];
            char c = ' ';
            int i4 = i;
            char c2 = 0;
            while (true) {
                i4--;
                if (i4 >= 0) {
                    char c3 = cArr2[i4];
                    if (c3 > c2) {
                        c2 = c3;
                    }
                    if (c3 < c) {
                        c = c3;
                    }
                }
            }
            hbCreateDecodeTables(iArr2[i3], iArr3[i3], iArr4[i3], cArr[i3], c, c2, i);
            iArr[i3] = c;
        }
    }

    public final void getAndMoveToFrontDecode() {
        byte[] bArr;
        String str;
        char c;
        int i;
        BZip2CompressorInputStream bZip2CompressorInputStream = this;
        BitInputStream bitInputStream = bZip2CompressorInputStream.bin;
        bZip2CompressorInputStream.origPtr = bsR(bitInputStream, 24);
        recvDecodingTables();
        Data data = bZip2CompressorInputStream.data;
        byte[] bArr2 = data.ll8;
        int[] iArr = data.unzftab;
        byte[] bArr3 = data.selector;
        byte[] bArr4 = data.seqToUnseq;
        char[] cArr = data.getAndMoveToFrontDecode_yy;
        int[] iArr2 = data.minLens;
        int[][] iArr3 = data.limit;
        int[][] iArr4 = data.base;
        int[][] iArr5 = data.perm;
        int i2 = bZip2CompressorInputStream.blockSize100k * 100000;
        int i3 = 256;
        while (true) {
            i3--;
            if (i3 < 0) {
                break;
            }
            cArr[i3] = (char) i3;
            iArr[i3] = 0;
        }
        int i4 = bZip2CompressorInputStream.nInUse + 1;
        int andMoveToFrontDecode0 = getAndMoveToFrontDecode0();
        int i5 = bArr3[0] & 255;
        checkBounds(i5, 6, "zt");
        int[] iArr6 = iArr4[i5];
        int[] iArr7 = iArr3[i5];
        int[] iArr8 = iArr5[i5];
        int i6 = iArr2[i5];
        int i7 = andMoveToFrontDecode0;
        int i8 = 49;
        int i9 = -1;
        int i10 = 0;
        while (i7 != i4) {
            int i11 = i4;
            String str2 = "groupNo";
            BitInputStream bitInputStream2 = bitInputStream;
            if (i7 == 0 || i7 == 1) {
                int[] iArr9 = iArr2;
                int i12 = i7;
                int i13 = i2;
                i7 = i12;
                int i14 = -1;
                int i15 = i8;
                int i16 = i10;
                int i17 = i6;
                int[] iArr10 = iArr8;
                int[] iArr11 = iArr7;
                int[] iArr12 = iArr6;
                int i18 = 1;
                while (true) {
                    if (i7 != 0) {
                        bArr = bArr2;
                        if (i7 != 1) {
                            break;
                        } else {
                            i14 += i18 << 1;
                        }
                    } else {
                        i14 += i18;
                        bArr = bArr2;
                    }
                    if (i15 == 0) {
                        int i19 = i16 + 1;
                        checkBounds(i19, 18002, str2);
                        int i20 = bArr3[i19] & 255;
                        str = str2;
                        checkBounds(i20, 6, "zt");
                        iArr12 = iArr4[i20];
                        iArr11 = iArr3[i20];
                        iArr10 = iArr5[i20];
                        i17 = iArr9[i20];
                        i16 = i19;
                        i15 = 49;
                    } else {
                        str = str2;
                        i15--;
                    }
                    int i21 = i17;
                    checkBounds(i21, 258, "zn");
                    int bsR = bsR(bitInputStream2, i21);
                    int i22 = i21;
                    while (bsR > iArr11[i22]) {
                        int i23 = i22 + 1;
                        checkBounds(i23, 258, "zn");
                        bsR = (bsR << 1) | bsR(bitInputStream2, 1);
                        i22 = i23;
                        iArr5 = iArr5;
                    }
                    int i24 = bsR - iArr12[i22];
                    checkBounds(i24, 258, "zvec");
                    i18 <<= 1;
                    i7 = iArr10[i24];
                    i17 = i21;
                    bArr2 = bArr;
                    str2 = str;
                    iArr5 = iArr5;
                }
                int[][] iArr13 = iArr5;
                char c2 = cArr[0];
                checkBounds(c2, 256, "yy");
                byte b = bArr4[c2];
                int i25 = b & 255;
                iArr[i25] = iArr[i25] + i14 + 1;
                int i26 = i9 + 1;
                int i27 = i26 + i14;
                Arrays.fill(bArr, i26, i27 + 1, b);
                if (i27 >= i13) {
                    throw new IOException("block overrun while expanding RLE in MTF, " + i27 + " exceeds " + i13);
                }
                bArr2 = bArr;
                i9 = i27;
                bitInputStream = bitInputStream2;
                iArr6 = iArr12;
                iArr7 = iArr11;
                iArr8 = iArr10;
                i6 = i17;
                i10 = i16;
                i4 = i11;
                i8 = i15;
                iArr2 = iArr9;
                iArr5 = iArr13;
                i2 = i13;
            } else {
                i9++;
                if (i9 >= i2) {
                    throw new IOException("block overrun in MTF, " + i9 + " exceeds " + i2);
                }
                int i28 = i2;
                checkBounds(i7, FrameworkStatsLog.HDMI_CEC_MESSAGE_REPORTED__USER_CONTROL_PRESSED_COMMAND__UP, "nextSym");
                int i29 = i7 - 1;
                char c3 = cArr[i29];
                int[] iArr14 = iArr2;
                checkBounds(c3, 256, "yy");
                byte b2 = bArr4[c3];
                int i30 = b2 & 255;
                iArr[i30] = iArr[i30] + 1;
                bArr2[i9] = b2;
                if (i7 <= 16) {
                    while (i29 > 0) {
                        int i31 = i29 - 1;
                        cArr[i29] = cArr[i31];
                        i29 = i31;
                    }
                    c = 0;
                } else {
                    c = 0;
                    System.arraycopy(cArr, 0, cArr, 1, i29);
                }
                cArr[c] = c3;
                if (i8 == 0) {
                    int i32 = i10 + 1;
                    checkBounds(i32, 18002, "groupNo");
                    int i33 = bArr3[i32] & 255;
                    checkBounds(i33, 6, "zt");
                    int[] iArr15 = iArr4[i33];
                    int[] iArr16 = iArr3[i33];
                    int[] iArr17 = iArr5[i33];
                    i = iArr14[i33];
                    i10 = i32;
                    iArr6 = iArr15;
                    iArr7 = iArr16;
                    iArr8 = iArr17;
                    i8 = 49;
                } else {
                    i8--;
                    i = i6;
                }
                checkBounds(i, 258, "zn");
                int bsR2 = bsR(bitInputStream2, i);
                int i34 = i;
                while (bsR2 > iArr7[i34]) {
                    i34++;
                    checkBounds(i34, 258, "zn");
                    bsR2 = (bsR2 << 1) | bsR(bitInputStream2, 1);
                }
                int i35 = bsR2 - iArr6[i34];
                checkBounds(i35, 258, "zvec");
                i7 = iArr8[i35];
                i6 = i;
                bitInputStream = bitInputStream2;
                i4 = i11;
                i2 = i28;
                iArr2 = iArr14;
            }
            bZip2CompressorInputStream = this;
        }
        bZip2CompressorInputStream.last = i9;
    }

    public final int getAndMoveToFrontDecode0() {
        Data data = this.data;
        int i = data.selector[0] & 255;
        checkBounds(i, 6, "zt");
        int[] iArr = data.limit[i];
        int i2 = data.minLens[i];
        checkBounds(i2, 258, "zn");
        int bsR = bsR(this.bin, i2);
        while (bsR > iArr[i2]) {
            i2++;
            checkBounds(i2, 258, "zn");
            bsR = (bsR << 1) | bsR(this.bin, 1);
        }
        int i3 = bsR - data.base[i][i2];
        checkBounds(i3, 258, "zvec");
        return data.perm[i][i3];
    }

    public final int setupBlock() {
        Data data;
        if (this.currentState == 0 || (data = this.data) == null) {
            return -1;
        }
        int[] iArr = data.cftab;
        int i = this.last + 1;
        int[] initTT = data.initTT(i);
        Data data2 = this.data;
        byte[] bArr = data2.ll8;
        iArr[0] = 0;
        System.arraycopy(data2.unzftab, 0, iArr, 1, 256);
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
            initTT[i7] = i5;
        }
        int i8 = this.origPtr;
        if (i8 < 0 || i8 >= initTT.length) {
            throw new IOException("stream corrupted");
        }
        this.su_tPos = initTT[i8];
        this.su_count = 0;
        this.su_i2 = 0;
        this.su_ch2 = 256;
        if (this.blockRandomised) {
            this.su_rNToGo = 0;
            this.su_rTPos = 0;
            return setupRandPartA();
        }
        return setupNoRandPartA();
    }

    public final int setupRandPartA() {
        if (this.su_i2 <= this.last) {
            this.su_chPrev = this.su_ch2;
            Data data = this.data;
            byte[] bArr = data.ll8;
            int i = this.su_tPos;
            int i2 = bArr[i] & 255;
            checkBounds(i, data.tt.length, "su_tPos");
            this.su_tPos = this.data.tt[this.su_tPos];
            int i3 = this.su_rNToGo;
            if (i3 == 0) {
                this.su_rNToGo = Rand.rNums(this.su_rTPos) - 1;
                int i4 = this.su_rTPos + 1;
                this.su_rTPos = i4;
                if (i4 == 512) {
                    this.su_rTPos = 0;
                }
            } else {
                this.su_rNToGo = i3 - 1;
            }
            int i5 = i2 ^ (this.su_rNToGo == 1 ? 1 : 0);
            this.su_ch2 = i5;
            this.su_i2++;
            this.currentState = 3;
            this.crc.updateCRC(i5);
            return i5;
        }
        endBlock();
        initBlock();
        return setupBlock();
    }

    public final int setupNoRandPartA() {
        if (this.su_i2 <= this.last) {
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
        this.currentState = 5;
        endBlock();
        initBlock();
        return setupBlock();
    }

    public final int setupRandPartB() {
        if (this.su_ch2 != this.su_chPrev) {
            this.currentState = 2;
            this.su_count = 1;
            return setupRandPartA();
        }
        int i = this.su_count + 1;
        this.su_count = i;
        if (i >= 4) {
            Data data = this.data;
            byte[] bArr = data.ll8;
            int i2 = this.su_tPos;
            this.su_z = (char) (bArr[i2] & 255);
            checkBounds(i2, data.tt.length, "su_tPos");
            this.su_tPos = this.data.tt[this.su_tPos];
            int i3 = this.su_rNToGo;
            if (i3 == 0) {
                this.su_rNToGo = Rand.rNums(this.su_rTPos) - 1;
                int i4 = this.su_rTPos + 1;
                this.su_rTPos = i4;
                if (i4 == 512) {
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
        }
        this.currentState = 2;
        return setupRandPartA();
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

    public final int setupNoRandPartB() {
        if (this.su_ch2 != this.su_chPrev) {
            this.su_count = 1;
            return setupNoRandPartA();
        }
        int i = this.su_count + 1;
        this.su_count = i;
        if (i >= 4) {
            checkBounds(this.su_tPos, this.data.ll8.length, "su_tPos");
            Data data = this.data;
            byte[] bArr = data.ll8;
            int i2 = this.su_tPos;
            this.su_z = (char) (bArr[i2] & 255);
            this.su_tPos = data.tt[i2];
            this.su_j2 = 0;
            return setupNoRandPartC();
        }
        return setupNoRandPartA();
    }

    public final int setupNoRandPartC() {
        if (this.su_j2 < this.su_z) {
            int i = this.su_ch2;
            this.crc.updateCRC(i);
            this.su_j2++;
            this.currentState = 7;
            return i;
        }
        this.su_i2++;
        this.su_count = 0;
        return setupNoRandPartA();
    }

    /* loaded from: classes2.dex */
    public final class Data {
        public final int[][] base;
        public final int[] cftab;
        public final char[] getAndMoveToFrontDecode_yy;
        public final int[][] limit;
        public byte[] ll8;
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

        public int[] initTT(int i) {
            int[] iArr = this.tt;
            if (iArr != null && iArr.length >= i) {
                return iArr;
            }
            int[] iArr2 = new int[i];
            this.tt = iArr2;
            return iArr2;
        }
    }
}
