package org.apache.commons.compress.archivers.sevenz;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.SequenceInputStream;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.zip.Inflater;
import java.util.zip.InflaterInputStream;
import org.apache.commons.compress.compressors.bzip2.BZip2CompressorInputStream;
import org.apache.commons.compress.compressors.deflate64.Deflate64CompressorInputStream;
import org.tukaani.xz.ARMOptions;
import org.tukaani.xz.ARMThumbOptions;
import org.tukaani.xz.FilterOptions;
import org.tukaani.xz.IA64Options;
import org.tukaani.xz.PowerPCOptions;
import org.tukaani.xz.SPARCOptions;
import org.tukaani.xz.X86Options;

/* loaded from: classes2.dex */
public abstract class Coders {
    public static final Map CODER_MAP = new HashMap() { // from class: org.apache.commons.compress.archivers.sevenz.Coders.1
        private static final long serialVersionUID = 1664829131806520867L;

        {
            put(SevenZMethod.COPY, new CopyDecoder());
            put(SevenZMethod.LZMA, new LZMADecoder());
            put(SevenZMethod.LZMA2, new LZMA2Decoder());
            put(SevenZMethod.DEFLATE, new DeflateDecoder());
            put(SevenZMethod.DEFLATE64, new Deflate64Decoder());
            put(SevenZMethod.BZIP2, new BZIP2Decoder());
            put(SevenZMethod.AES256SHA256, new AES256SHA256Decoder());
            put(SevenZMethod.BCJ_X86_FILTER, new BCJDecoder(new X86Options()));
            put(SevenZMethod.BCJ_PPC_FILTER, new BCJDecoder(new PowerPCOptions()));
            put(SevenZMethod.BCJ_IA64_FILTER, new BCJDecoder(new IA64Options()));
            put(SevenZMethod.BCJ_ARM_FILTER, new BCJDecoder(new ARMOptions()));
            put(SevenZMethod.BCJ_ARM_THUMB_FILTER, new BCJDecoder(new ARMThumbOptions()));
            put(SevenZMethod.BCJ_SPARC_FILTER, new BCJDecoder(new SPARCOptions()));
            put(SevenZMethod.DELTA_FILTER, new DeltaDecoder());
        }
    };

    public static CoderBase findByMethod(SevenZMethod sevenZMethod) {
        return (CoderBase) CODER_MAP.get(sevenZMethod);
    }

    public static InputStream addDecoder(String str, InputStream inputStream, long j, Coder coder, byte[] bArr) {
        CoderBase findByMethod = findByMethod(SevenZMethod.byId(coder.decompressionMethodId));
        if (findByMethod == null) {
            throw new IOException("Unsupported compression method " + Arrays.toString(coder.decompressionMethodId) + " used in " + str);
        }
        return findByMethod.decode(str, inputStream, j, coder, bArr);
    }

    /* loaded from: classes2.dex */
    public class CopyDecoder extends CoderBase {
        @Override // org.apache.commons.compress.archivers.sevenz.CoderBase
        public InputStream decode(String str, InputStream inputStream, long j, Coder coder, byte[] bArr) {
            return inputStream;
        }

        public CopyDecoder() {
            super(new Class[0]);
        }
    }

    /* loaded from: classes2.dex */
    public class BCJDecoder extends CoderBase {
        public final FilterOptions opts;

        public BCJDecoder(FilterOptions filterOptions) {
            super(new Class[0]);
            this.opts = filterOptions;
        }

        @Override // org.apache.commons.compress.archivers.sevenz.CoderBase
        public InputStream decode(String str, InputStream inputStream, long j, Coder coder, byte[] bArr) {
            try {
                return this.opts.getInputStream(inputStream);
            } catch (AssertionError e) {
                throw new IOException("BCJ filter used in " + str + " needs XZ for Java > 1.4 - see https://commons.apache.org/proper/commons-compress/limitations.html#7Z", e);
            }
        }
    }

    /* loaded from: classes2.dex */
    public class DeflateDecoder extends CoderBase {
        public static final byte[] ONE_ZERO_BYTE = new byte[1];

        public DeflateDecoder() {
            super(Number.class);
        }

        @Override // org.apache.commons.compress.archivers.sevenz.CoderBase
        public InputStream decode(String str, InputStream inputStream, long j, Coder coder, byte[] bArr) {
            Inflater inflater = new Inflater(true);
            return new DeflateDecoderInputStream(new InflaterInputStream(new SequenceInputStream(inputStream, new ByteArrayInputStream(ONE_ZERO_BYTE)), inflater), inflater);
        }

        /* loaded from: classes2.dex */
        public class DeflateDecoderInputStream extends InputStream {
            public Inflater inflater;
            public InflaterInputStream inflaterInputStream;

            public DeflateDecoderInputStream(InflaterInputStream inflaterInputStream, Inflater inflater) {
                this.inflaterInputStream = inflaterInputStream;
                this.inflater = inflater;
            }

            @Override // java.io.InputStream
            public int read() {
                return this.inflaterInputStream.read();
            }

            @Override // java.io.InputStream
            public int read(byte[] bArr, int i, int i2) {
                return this.inflaterInputStream.read(bArr, i, i2);
            }

            @Override // java.io.InputStream
            public int read(byte[] bArr) {
                return this.inflaterInputStream.read(bArr);
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                try {
                    this.inflaterInputStream.close();
                } finally {
                    this.inflater.end();
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    public class Deflate64Decoder extends CoderBase {
        public Deflate64Decoder() {
            super(Number.class);
        }

        @Override // org.apache.commons.compress.archivers.sevenz.CoderBase
        public InputStream decode(String str, InputStream inputStream, long j, Coder coder, byte[] bArr) {
            return new Deflate64CompressorInputStream(inputStream);
        }
    }

    /* loaded from: classes2.dex */
    public class BZIP2Decoder extends CoderBase {
        public BZIP2Decoder() {
            super(Number.class);
        }

        @Override // org.apache.commons.compress.archivers.sevenz.CoderBase
        public InputStream decode(String str, InputStream inputStream, long j, Coder coder, byte[] bArr) {
            return new BZip2CompressorInputStream(inputStream);
        }
    }
}
