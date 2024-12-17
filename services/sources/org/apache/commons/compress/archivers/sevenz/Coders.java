package org.apache.commons.compress.archivers.sevenz;

import com.android.internal.util.jobs.XmlUtils$$ExternalSyntheticOutline0;
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
import org.tukaani.xz.ArrayCache;
import org.tukaani.xz.BCJOptions;
import org.tukaani.xz.FilterOptions;
import org.tukaani.xz.IA64Options;
import org.tukaani.xz.LZMA2Options;
import org.tukaani.xz.PowerPCOptions;
import org.tukaani.xz.SPARCOptions;
import org.tukaani.xz.X86Options;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes2.dex */
public abstract class Coders {
    public static final Map CODER_MAP = new HashMap() { // from class: org.apache.commons.compress.archivers.sevenz.Coders.1
        private static final long serialVersionUID = 1664829131806520867L;

        {
            put(SevenZMethod.COPY, new CopyDecoder(new Class[0], 0));
            put(SevenZMethod.LZMA, new LZMADecoder(LZMA2Options.class, Number.class));
            put(SevenZMethod.LZMA2, new LZMA2Decoder(LZMA2Options.class, Number.class));
            put(SevenZMethod.DEFLATE, new CopyDecoder(new Class[]{Number.class}, 1));
            put(SevenZMethod.DEFLATE64, new CopyDecoder(new Class[]{Number.class}, 3));
            put(SevenZMethod.BZIP2, new CopyDecoder(new Class[]{Number.class}, 2));
            put(SevenZMethod.AES256SHA256, new AES256SHA256Decoder(new Class[0]));
            put(SevenZMethod.BCJ_X86_FILTER, new BCJDecoder(new X86Options()));
            put(SevenZMethod.BCJ_PPC_FILTER, new BCJDecoder(new PowerPCOptions()));
            put(SevenZMethod.BCJ_IA64_FILTER, new BCJDecoder(new IA64Options()));
            put(SevenZMethod.BCJ_ARM_FILTER, new BCJDecoder(new ARMOptions()));
            put(SevenZMethod.BCJ_ARM_THUMB_FILTER, new BCJDecoder(new ARMThumbOptions()));
            put(SevenZMethod.BCJ_SPARC_FILTER, new BCJDecoder(new SPARCOptions()));
            put(SevenZMethod.DELTA_FILTER, new DeltaDecoder(Number.class));
        }
    };

    /* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
    public final class BCJDecoder extends CoderBase {
        public final FilterOptions opts;

        public BCJDecoder(BCJOptions bCJOptions) {
            super(new Class[0]);
            this.opts = bCJOptions;
        }

        @Override // org.apache.commons.compress.archivers.sevenz.CoderBase
        public final InputStream decode(String str, InputStream inputStream, long j, Coder coder, byte[] bArr) {
            try {
                return this.opts.getInputStream(inputStream, ArrayCache.defaultCache);
            } catch (AssertionError e) {
                throw new IOException(XmlUtils$$ExternalSyntheticOutline0.m("BCJ filter used in ", str, " needs XZ for Java > 1.4 - see https://commons.apache.org/proper/commons-compress/limitations.html#7Z"), e);
            }
        }
    }

    /* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
    public final class CopyDecoder extends CoderBase {
        public static final byte[] ONE_ZERO_BYTE = new byte[1];
        public final /* synthetic */ int $r8$classId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ CopyDecoder(Class[] clsArr, int i) {
            super(clsArr);
            this.$r8$classId = i;
        }

        @Override // org.apache.commons.compress.archivers.sevenz.CoderBase
        public final InputStream decode(String str, InputStream inputStream, long j, Coder coder, byte[] bArr) {
            switch (this.$r8$classId) {
                case 0:
                    return inputStream;
                case 1:
                    Inflater inflater = new Inflater(true);
                    InflaterInputStream inflaterInputStream = new InflaterInputStream(new SequenceInputStream(inputStream, new ByteArrayInputStream(ONE_ZERO_BYTE)), inflater);
                    Coders$DeflateDecoder$DeflateDecoderInputStream coders$DeflateDecoder$DeflateDecoderInputStream = new Coders$DeflateDecoder$DeflateDecoderInputStream();
                    coders$DeflateDecoder$DeflateDecoderInputStream.inflaterInputStream = inflaterInputStream;
                    coders$DeflateDecoder$DeflateDecoderInputStream.inflater = inflater;
                    return coders$DeflateDecoder$DeflateDecoderInputStream;
                case 2:
                    return new BZip2CompressorInputStream(inputStream);
                default:
                    return new Deflate64CompressorInputStream(inputStream);
            }
        }
    }

    public static InputStream addDecoder(String str, InputStream inputStream, long j, Coder coder, byte[] bArr) {
        CoderBase coderBase = (CoderBase) ((HashMap) CODER_MAP).get(SevenZMethod.byId(coder.decompressionMethodId));
        if (coderBase != null) {
            return coderBase.decode(str, inputStream, j, coder, bArr);
        }
        throw new IOException("Unsupported compression method " + Arrays.toString(coder.decompressionMethodId) + " used in " + str);
    }
}
