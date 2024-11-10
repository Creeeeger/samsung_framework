package org.apache.commons.compress.utils;

import android.os.IInstalld;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ReadableByteChannel;

/* loaded from: classes2.dex */
public abstract class IOUtils {
    public static final byte[] SKIP_BUF = new byte[IInstalld.FLAG_USE_QUOTA];

    public static long copy(InputStream inputStream, OutputStream outputStream) {
        return copy(inputStream, outputStream, 8024);
    }

    public static long copy(InputStream inputStream, OutputStream outputStream, int i) {
        if (i < 1) {
            throw new IllegalArgumentException("buffersize must be bigger than 0");
        }
        byte[] bArr = new byte[i];
        long j = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (-1 == read) {
                return j;
            }
            outputStream.write(bArr, 0, read);
            j += read;
        }
    }

    public static long skip(InputStream inputStream, long j) {
        int readFully;
        long j2 = j;
        while (j2 > 0) {
            long skip = inputStream.skip(j2);
            if (skip == 0) {
                break;
            }
            j2 -= skip;
        }
        while (j2 > 0 && (readFully = readFully(inputStream, SKIP_BUF, 0, (int) Math.min(j2, 4096L))) >= 1) {
            j2 -= readFully;
        }
        return j - j2;
    }

    public static int readFully(InputStream inputStream, byte[] bArr, int i, int i2) {
        if (i2 < 0 || i < 0 || i2 + i > bArr.length) {
            throw new IndexOutOfBoundsException();
        }
        int i3 = 0;
        while (i3 != i2) {
            int read = inputStream.read(bArr, i + i3, i2 - i3);
            if (read == -1) {
                break;
            }
            i3 += read;
        }
        return i3;
    }

    public static void readFully(ReadableByteChannel readableByteChannel, ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        int i = 0;
        while (i < remaining) {
            int read = readableByteChannel.read(byteBuffer);
            if (read <= 0) {
                break;
            } else {
                i += read;
            }
        }
        if (i < remaining) {
            throw new EOFException();
        }
    }

    public static byte[] toByteArray(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        copy(inputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }
}
