package com.sec.internal.helper.picturetool;

import android.graphics.Bitmap;
import android.util.Log;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.Vector;

/* loaded from: classes.dex */
public class GifDecoder {
    public static final String LOG_TAG = "GifDecoder";
    private static final int MAX_FRAMES = 50;
    protected static final int MAX_STACK_SIZE = 4096;
    public static final int STATUS_FORMAT_ERROR = 1;
    public static final int STATUS_OK = 0;
    public static final int STATUS_OPEN_ERROR = 2;
    protected int[] act;
    protected int bgColor;
    protected int bgIndex;
    protected int frameCount;
    protected Vector<GifFrame> frames;
    protected int[] gct;
    protected boolean gctFlag;
    protected int gctSize;
    protected int height;
    protected int ih;
    protected Bitmap image;
    protected InputStream in;
    protected boolean interlace;
    protected int iw;
    protected int ix;
    protected int iy;
    protected int lastBgColor;
    protected Bitmap lastBitmap;
    protected int[] lct;
    protected boolean lctFlag;
    protected int lctSize;
    protected int lrh;
    protected int lrw;
    protected int lrx;
    protected int lry;
    protected int pixelAspect;
    protected byte[] pixelStack;
    protected byte[] pixels;
    protected short[] prefix;
    protected int status;
    protected byte[] suffix;
    protected int transIndex;
    protected int width;
    protected int loopCount = 1;
    protected byte[] block = new byte[256];
    protected int blockSize = 0;
    protected int dispose = 0;
    protected int lastDispose = 0;
    protected boolean transparency = false;
    protected int delay = 0;

    public static class GifFrame {
        public int delay;
        public Bitmap image;

        public GifFrame(Bitmap bitmap, int i) {
            this.image = bitmap;
            this.delay = i;
        }
    }

    protected void setPixels() {
        int i;
        int[] iArr = new int[this.image.getWidth() * this.image.getHeight()];
        int i2 = this.lastDispose;
        int i3 = 0;
        if (i2 > 0) {
            if (i2 == 3) {
                int i4 = this.frameCount - 2;
                if (i4 > 0) {
                    this.lastBitmap = getFrame(i4 - 1);
                } else {
                    this.lastBitmap = null;
                }
            }
            Bitmap bitmap = this.lastBitmap;
            if (bitmap != null) {
                int i5 = this.width;
                bitmap.getPixels(iArr, 0, i5, 0, 0, i5, this.height);
                if (this.lastDispose == 2) {
                    int i6 = !this.transparency ? this.lastBgColor : 0;
                    for (int i7 = 0; i7 < this.lrh; i7++) {
                        int i8 = ((this.lry + i7) * this.width) + this.lrx;
                        int i9 = this.lrw + i8;
                        while (i8 < i9) {
                            iArr[i8] = i6;
                            i8++;
                        }
                    }
                }
            }
        }
        int i10 = 8;
        int i11 = 0;
        int i12 = 1;
        while (true) {
            int i13 = this.ih;
            if (i3 < i13) {
                if (this.interlace) {
                    if (i11 >= i13) {
                        i12++;
                        if (i12 == 2) {
                            i11 = 4;
                        } else if (i12 == 3) {
                            i10 = 4;
                            i11 = 2;
                        } else if (i12 == 4) {
                            i10 = 2;
                            i11 = 1;
                        }
                    }
                    i = i11 + i10;
                } else {
                    i = i11;
                    i11 = i3;
                }
                int i14 = i11 + this.iy;
                if (i14 < this.height) {
                    int i15 = this.width;
                    int i16 = i14 * i15;
                    int i17 = this.ix + i16;
                    int i18 = this.iw;
                    int i19 = i17 + i18;
                    if (i16 + i15 < i19) {
                        i19 = i16 + i15;
                    }
                    int i20 = i18 * i3;
                    while (i17 < i19) {
                        int i21 = i20 + 1;
                        int i22 = this.act[this.pixels[i20] & 255];
                        if (i22 != 0) {
                            iArr[i17] = i22;
                        }
                        i17++;
                        i20 = i21;
                    }
                }
                i3++;
                i11 = i;
            } else {
                Bitmap bitmap2 = this.image;
                bitmap2.setPixels(iArr, 0, bitmap2.getWidth(), 0, 0, this.image.getWidth(), this.image.getHeight());
                return;
            }
        }
    }

    public Bitmap getFrame(int i) {
        int i2;
        int i3 = this.frameCount;
        if (i3 > 0 && (i2 = i % i3) >= 0 && i2 < this.frames.size()) {
            return this.frames.elementAt(i2).image;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x0035 -> B:14:0x003a). Please report as a decompilation issue!!! */
    public int read(String str) {
        init();
        ?? r1 = 0;
        r1 = 0;
        r1 = 0;
        try {
        } catch (Exception e) {
            String str2 = LOG_TAG;
            Log.e(str2, "Could not close stream", e);
            r1 = str2;
        }
        try {
            try {
                FileInputStream fileInputStream = new FileInputStream(str);
                try {
                    this.in = fileInputStream;
                    readHeader();
                    if (!err()) {
                        readContents();
                        if (this.frameCount < 0) {
                            this.status = 1;
                        }
                    }
                    fileInputStream.close();
                } catch (FileNotFoundException unused) {
                    r1 = fileInputStream;
                    this.status = 2;
                    if (r1 != 0) {
                        r1.close();
                        r1 = r1;
                    }
                    return this.status;
                } catch (Throwable th) {
                    th = th;
                    r1 = fileInputStream;
                    if (r1 != 0) {
                        try {
                            r1.close();
                        } catch (Exception e2) {
                            Log.e(LOG_TAG, "Could not close stream", e2);
                        }
                    }
                    throw th;
                }
            } catch (FileNotFoundException unused2) {
            }
            return this.status;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private void allcateBitmapData(int i) {
        byte[] bArr = this.pixels;
        if (bArr == null || bArr.length < i) {
            this.pixels = new byte[i];
        }
        if (this.prefix == null) {
            this.prefix = new short[MAX_STACK_SIZE];
        }
        if (this.suffix == null) {
            this.suffix = new byte[MAX_STACK_SIZE];
        }
        if (this.pixelStack == null) {
            this.pixelStack = new byte[4097];
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v11, types: [short] */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v19 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8 */
    protected void decodeBitmapData() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        short s;
        int i7 = this.iw * this.ih;
        allcateBitmapData(i7);
        int read = read();
        int i8 = 1 << read;
        int i9 = i8 + 1;
        int i10 = i8 + 2;
        int i11 = read + 1;
        int i12 = (1 << i11) - 1;
        for (int i13 = 0; i13 < i8; i13++) {
            this.prefix[i13] = 0;
            this.suffix[i13] = (byte) i13;
        }
        int i14 = i11;
        int i15 = i12;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        int i20 = 0;
        int i21 = 0;
        int i22 = 0;
        int i23 = 0;
        int i24 = -1;
        int i25 = i10;
        while (i16 < i7) {
            if (i17 != 0) {
                i = i9;
                i2 = i22;
                i3 = i8;
                int i26 = i24;
                i4 = i11;
                i5 = i26;
            } else if (i18 >= i14) {
                int i27 = i19 & i15;
                i19 >>= i14;
                i18 -= i14;
                if (i27 > i25 || i27 == i9) {
                    break;
                }
                if (i27 == i8) {
                    i14 = i11;
                    i25 = i10;
                    i15 = i12;
                    i24 = -1;
                } else {
                    int i28 = i24;
                    i4 = i11;
                    if (i28 == -1) {
                        this.pixelStack[i17] = this.suffix[i27 == true ? 1 : 0];
                        i22 = i27 == true ? 1 : 0;
                        i17++;
                        i11 = i4;
                        i9 = i9;
                        i24 = i22;
                    } else {
                        i = i9;
                        if (i27 == i25) {
                            byte[] bArr = this.pixelStack;
                            i6 = i27 == true ? 1 : 0;
                            bArr[i17] = (byte) i22;
                            s = i28;
                            i17++;
                        } else {
                            i6 = i27 == true ? 1 : 0;
                            s = i27;
                        }
                        while (s > i8) {
                            this.pixelStack[i17] = this.suffix[s];
                            s = this.prefix[s];
                            i17++;
                            i8 = i8;
                        }
                        i3 = i8;
                        byte[] bArr2 = this.suffix;
                        i2 = bArr2[s] & 255;
                        if (i25 >= MAX_STACK_SIZE) {
                            break;
                        }
                        int i29 = i17 + 1;
                        byte b = (byte) i2;
                        this.pixelStack[i17] = b;
                        this.prefix[i25] = (short) i28;
                        bArr2[i25] = b;
                        i25++;
                        if ((i25 & i15) == 0 && i25 < MAX_STACK_SIZE) {
                            i14++;
                            i15 += i25;
                        }
                        i5 = i6;
                        i17 = i29;
                    }
                }
            } else {
                if (i20 == 0) {
                    i20 = readBlock();
                    if (i20 <= 0) {
                        break;
                    } else {
                        i21 = 0;
                    }
                }
                i19 += (this.block[i21] & 255) << i18;
                i18 += 8;
                i21++;
                i20--;
            }
            i17--;
            this.pixels[i23] = this.pixelStack[i17];
            i16++;
            i23++;
            i8 = i3;
            i9 = i;
            i22 = i2;
            int i30 = i4;
            i24 = i5;
            i11 = i30;
        }
        for (int i31 = i23; i31 < i7; i31++) {
            this.pixels[i31] = 0;
        }
    }

    protected boolean err() {
        return this.status != 0;
    }

    protected void init() {
        this.status = 0;
        this.frameCount = 0;
        this.frames = new Vector<>();
        this.gct = null;
        this.lct = null;
    }

    protected int read() {
        try {
            return this.in.read();
        } catch (Exception unused) {
            this.status = 1;
            return 0;
        }
    }

    protected int readBlock() {
        int read = read();
        this.blockSize = read;
        int i = 0;
        if (read > 0) {
            while (true) {
                try {
                    int i2 = this.blockSize;
                    if (i >= i2) {
                        break;
                    }
                    int read2 = this.in.read(this.block, i, i2 - i);
                    if (read2 == -1) {
                        break;
                    }
                    i += read2;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if (i < this.blockSize) {
                this.status = 1;
            }
        }
        return i;
    }

    protected int[] readColorTable(int i) {
        int i2;
        int i3 = i * 3;
        byte[] bArr = new byte[i3];
        try {
            i2 = this.in.read(bArr);
        } catch (Exception e) {
            e.printStackTrace();
            i2 = 0;
        }
        if (i2 < i3) {
            this.status = 1;
            return null;
        }
        int[] iArr = new int[256];
        int i4 = 0;
        for (int i5 = 0; i5 < i; i5++) {
            int i6 = i4 + 1;
            int i7 = i6 + 1;
            iArr[i5] = ((bArr[i4] & 255) << 16) | (-16777216) | ((bArr[i6] & 255) << 8) | (bArr[i7] & 255);
            i4 = i7 + 1;
        }
        return iArr;
    }

    protected void readContents() {
        boolean z = false;
        while (!z && !err()) {
            int read = read();
            Log.d(LOG_TAG, "code=" + read);
            if (read == 33) {
                int read2 = read();
                if (read2 == 1) {
                    skip();
                } else if (read2 == 249) {
                    readGraphicControlExt();
                } else if (read2 == 254) {
                    skip();
                } else if (read2 == 255) {
                    readBlock();
                    char[] cArr = new char[11];
                    for (int i = 0; i < 11; i++) {
                        cArr[i] = (char) this.block[i];
                    }
                    if ("NETSCAPE2.0".equals(new String(cArr))) {
                        readNetscapeExt();
                    } else {
                        skip();
                    }
                } else {
                    skip();
                }
            } else if (read != 44) {
                if (read != 59) {
                    this.status = 1;
                } else {
                    z = true;
                }
            } else if (this.frameCount >= 50) {
                return;
            } else {
                readBitmap();
            }
        }
    }

    protected void readGraphicControlExt() {
        read();
        int read = read();
        int i = (read & 28) >> 2;
        this.dispose = i;
        if (i == 0) {
            this.dispose = 1;
        }
        this.transparency = (read & 1) != 0;
        this.delay = readShort() * 10;
        this.transIndex = read();
        read();
    }

    protected void readHeader() {
        char[] cArr = new char[6];
        for (int i = 0; i < 6; i++) {
            cArr[i] = (char) read();
        }
        String str = new String(cArr);
        Log.d(LOG_TAG, "readHeader: start=" + str);
        if (!str.startsWith("GIF")) {
            this.status = 1;
            return;
        }
        readLSD();
        if (!this.gctFlag || err()) {
            return;
        }
        int[] readColorTable = readColorTable(this.gctSize);
        this.gct = readColorTable;
        if (readColorTable != null) {
            this.bgColor = readColorTable[this.bgIndex];
        }
    }

    protected void readBitmap() {
        this.ix = readShort();
        this.iy = readShort();
        this.iw = readShort();
        this.ih = readShort();
        int read = read();
        int i = 0;
        this.lctFlag = (read & 128) != 0;
        int pow = (int) Math.pow(2.0d, (read & 7) + 1);
        this.lctSize = pow;
        this.interlace = (read & 64) != 0;
        if (this.lctFlag) {
            int[] readColorTable = readColorTable(pow);
            this.lct = readColorTable;
            this.act = readColorTable;
        } else {
            this.act = this.gct;
            if (this.bgIndex == this.transIndex) {
                this.bgColor = 0;
            }
        }
        if (this.act == null) {
            this.status = 1;
            return;
        }
        if (err()) {
            return;
        }
        if (this.transparency) {
            int[] iArr = this.act;
            int i2 = this.transIndex;
            int i3 = iArr[i2];
            iArr[i2] = 0;
            i = i3;
        }
        decodeBitmapData();
        skip();
        if (err()) {
            return;
        }
        this.frameCount++;
        this.image = Bitmap.createBitmap(this.width, this.height, Bitmap.Config.ARGB_8888);
        setPixels();
        this.frames.addElement(new GifFrame(this.image, this.delay));
        if (this.transparency) {
            this.act[this.transIndex] = i;
        }
        resetFrame();
    }

    protected void readLSD() {
        this.width = readShort();
        this.height = readShort();
        Log.d(LOG_TAG, "w=" + this.width + ", h=" + this.height);
        int read = read();
        this.gctFlag = (read & 128) != 0;
        this.gctSize = 2 << (read & 7);
        this.bgIndex = read();
        this.pixelAspect = read();
        Log.d(LOG_TAG, "pixelAspect=" + this.pixelAspect + ", gctSize=" + this.gctSize + ", gctFlag=" + this.gctFlag);
    }

    protected void readNetscapeExt() {
        do {
            readBlock();
            byte[] bArr = this.block;
            if (bArr[0] == 1) {
                this.loopCount = ((bArr[2] & 255) << 8) | (bArr[1] & 255);
            }
            if (this.blockSize <= 0) {
                return;
            }
        } while (!err());
    }

    protected int readShort() {
        return (read() << 8) | read();
    }

    protected void resetFrame() {
        this.lastDispose = this.dispose;
        this.lrx = this.ix;
        this.lry = this.iy;
        this.lrw = this.iw;
        this.lrh = this.ih;
        this.lastBitmap = this.image;
        this.lastBgColor = this.bgColor;
        this.dispose = 0;
        this.transparency = false;
        this.delay = 0;
        this.lct = null;
    }

    protected void skip() {
        do {
            readBlock();
            if (this.blockSize <= 0) {
                return;
            }
        } while (!err());
    }

    public void clean() {
        int size = this.frames.size();
        for (int i = 0; i < size; i++) {
            this.frames.get(i).image.recycle();
            this.frames.get(i).image = null;
        }
        this.frames.clear();
    }

    public Vector<GifFrame> getFrames() {
        return this.frames;
    }
}
